<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Blogs;
use Illuminate\Support\Str;
class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['blog']=Blogs::all()->sortBy('blog_must');
  
        return view('backend.blogs.index',compact('data'));
    }


    public function sortable()
    {
        foreach($_POST['item'] as $key=>$value)
        {
            //seçme işlemi
            $blogs=Blogs::find(intval($value));//hangi veriye kadetmek istiyordsak ona göre find methodu kullanılır
        //intval methodu ile belirtilmesse çalışmaz
        $blogs->blog_must=intval($key);
        $blogs->save();
        }
        echo true;

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.blogs.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(strlen($request->blog_slug)>3)
        {
            $slug=Str::slug($request->blog_slug);
        }
        else{
            $slug=Str::slug($request->blog_title);

        }
        //bir görsel yüklemek için doğrulama işlemleri
        if($request->hasFile('blog_file'))
        {
            $request->validate([
                'blog_title'=>'required',
                'blog_content'=>'required',
                'blog_file'=>'required'

            ]);
            $file_name=uniqid().'.'.$request->blog_file->getClientOriginalExtension();//gelen dosyanın orjinal ismini alıp aktarır
            $request->blog_file->move(public_path('images/blogs'),$file_name);
        }else{
            $file_name=null;
        }
    
        $blog=Blogs::insert(
            [
                "blog_title"=>$request->blog_title,
                "blog_slug"=>$slug,
                "blog_file"=>$file_name,
                "blog_content"=>$request->blog_content,
                "blog_status"=>$request->blog_status
            ]
        );
        if($blog)
        {
            return redirect(route('blog.index'))->with('success','İşlem başarılı');
        }
        return back()->with('error','İşlem başarısız');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $blogs=Blogs::where('id',$id)->first();
        return view('backend.blogs.edit')->with('blogs',$blogs);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if(strlen($request->blog_slug)>3)
        {
            $slug=Str::slug($request->blog_slug);
        }
        else{
            $slug=Str::slug($request->blog_title);

        }
        //bir görsel yüklemek için doğrulama işlemleri
        if($request->hasFile('blog_file'))
        {
            $request->validate([
                'blog_title'=>'required',
                'blog_content'=>'required',
                'blog_file'=>'required'

            ]);
            $file_name=uniqid().'.'.$request->blog_file->getClientOriginalExtension();//gelen dosyanın orjinal ismini alıp aktarır
            $request->blog_file->move(public_path('images/blogs'),$file_name);
            $blog=Blogs::Where('id',$id)->update(
                [
                    "blog_title"=>$request->blog_title,
                    "blog_slug"=>$slug,
                    "blog_file"=>$file_name,
                    "blog_content"=>$request->blog_content,
                    "blog_status"=>$request->blog_status
                ]
            );
            //birden fazla olan resmi silmek için
            $path='images/blogs/'.$request->old_file;
            if(file_exists($path))
            {
                @unlink(public_path($path));

            }
        }else{
            $blog=Blogs::Where('id',$id)->update(
                [
                    "blog_title"=>$request->blog_title,
                    "blog_slug"=>$slug,
                    "blog_content"=>$request->blog_content,
                    "blog_status"=>$request->blog_status
                ]
            );
        }
    
        
        if($blog)
        {
            return back()->with('success','İşlem başarılı');
        }
        return back()->with('error','İşlem başarısız');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $blog = Blogs::find(intval($id));
       if($blog->delete())
       {
           echo 1;//işlem başarılı ise
       }
       echo 0;//işlem başarısız ise
    }
}
