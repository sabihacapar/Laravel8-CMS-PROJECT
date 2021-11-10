<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pages;
use Illuminate\Support\Str;
class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['page']=Pages::all()->sortBy('page_must');
  
        return view('backend.pages.index',compact('data'));
    }


    public function sortable()
    {
        foreach($_POST['item'] as $key=>$value)
        {
            //seçme işlemi
            $pages=Pages::find(intval($value));//hangi veriye kadetmek istiyordsak ona göre find methodu kullanılır
        //intval methodu ile belirtilmesse çalışmaz
        $pages->page_must=intval($key);
        $pages->save();
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
        return view('backend.pages.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(strlen($request->page_slug)>3)
        {
            $slug=Str::slug($request->page_slug);
        }
        else{
            $slug=Str::slug($request->page_title);

        }
        //bir görsel yüklemek için doğrulama işlemleri
        if($request->hasFile('page_file'))
        {
            $request->validate([
                'page_title'=>'required',
                'page_content'=>'required',
                'page_file'=>'required'

            ]);
            $file_name=uniqid().'.'.$request->page_file->getClientOriginalExtension();//gelen dosyanın orjinal ismini alıp aktarır
            $request->page_file->move(public_path('images/pages'),$file_name);
        }else{
            $file_name=null;
        }
    
        $page=Pages::insert(
            [
                "page_title"=>$request->page_title,
                "page_slug"=>$slug,
                "page_file"=>$file_name,
                "page_content"=>$request->page_content,
                "page_status"=>$request->page_status
            ]
        );
        if($page)
        {
            return redirect(route('page.index'))->with('success','İşlem başarılı');
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
        $pages=Pages::where('id',$id)->first();
        return view('backend.pages.edit')->with('pages',$pages);
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
        if(strlen($request->page_slug)>3)
        {
            $slug=Str::slug($request->page_slug);
        }
        else{
            $slug=Str::slug($request->page_title);

        }
        //bir görsel yüklemek için doğrulama işlemleri
        if($request->hasFile('page_file'))
        {
            $request->validate([
                'page_title'=>'required',
                'page_content'=>'required',
                'page_file'=>'required'

            ]);
            $file_name=uniqid().'.'.$request->page_file->getClientOriginalExtension();//gelen dosyanın orjinal ismini alıp aktarır
            $request->page_file->move(public_path('images/pages'),$file_name);
            $page=Pages::Where('id',$id)->update(
                [
                    "page_title"=>$request->page_title,
                    "page_slug"=>$slug,
                    "page_file"=>$file_name,
                    "page_content"=>$request->page_content,
                    "page_status"=>$request->page_status
                ]
            );
            //birden fazla olan resmi silmek için
            $path='images/pages/'.$request->old_file;
            if(file_exists($path))
            {
                @unlink(public_path($path));

            }
        }else{
            $page=Pages::Where('id',$id)->update(
                [
                    "page_title"=>$request->page_title,
                    "page_slug"=>$slug,
                    "page_content"=>$request->page_content,
                    "page_status"=>$request->page_status
                ]
            );
        }
    
        
        if($page)
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
       $page = Pages::find(intval($id));
       if($page->delete())
       {
           echo 1;//işlem başarılı ise
       }
       echo 0;//işlem başarısız ise
    }
}
