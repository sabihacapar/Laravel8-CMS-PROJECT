<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Sliders;
use Illuminate\Support\Str;
class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['slider']=Sliders::all()->sortBy('slider_must');
  
        return view('backend.sliders.index',compact('data'));
    }


    public function sortable()
    {
        foreach($_POST['item'] as $key=>$value)
        {
            //seçme işlemi
            $sliders=Sliders::find(intval($value));//hangi veriye kadetmek istiyordsak ona göre find methodu kullanılır
        //intval methodu ile belirtilmesse çalışmaz
        $sliders->slider_must=intval($key);
        $sliders->save();
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
        return view('backend.sliders.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'slider_title'=>'required',
            'slider_content'=>'required',
            'slider_url'=>'active_url'

        ]);
        if(strlen($request->slider_slug)>3)
        {
            $slug=Str::slug($request->slider_slug);
        }
        else{
            $slug=Str::slug($request->slider_title);

        }
        //bir görsel yüklemek için doğrulama işlemleri
        if($request->hasFile('slider_file'))
        {
            
            $file_name=uniqid().'.'.$request->slider_file->getClientOriginalExtension();//gelen dosyanın orjinal ismini alıp aktarır
            $request->slider_file->move(public_path('images/sliders'),$file_name);
        }else{
            $file_name=null;
        }
    
        $slider=Sliders::insert(
            [
                "slider_title"=>$request->slider_title,
                "slider_slug"=>$slug,
                "slider_url"=>$request->slider_url,
                "slider_file"=>$file_name,
                "slider_content"=>$request->slider_content,
                "slider_status"=>$request->slider_status
               
            ]
        );
        if($slider)
        {
            return redirect(route('slider.index'))->with('success','İşlem başarılı');
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
        $sliders=Sliders::where('id',$id)->first();
        return view('backend.sliders.edit')->with('sliders',$sliders);
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
        if(strlen($request->slider_slug)>3)
        {
            $slug=Str::slug($request->slider_slug);
        }
        else{
            $slug=Str::slug($request->slider_title);

        }
        //bir görsel yüklemek için doğrulama işlemleri
        if($request->hasFile('slider_file'))
        {
            $request->validate([
                'slider_file'=>'required',

            ]);
            $file_name=uniqid().'.'.$request->slider_file->getClientOriginalExtension();//gelen dosyanın orjinal ismini alıp aktarır
            $request->slider_file->move(public_path('images/sliders'),$file_name);
            $slider=Sliders::Where('id',$id)->update(
                [
                    "slider_title"=>$request->slider_title,
                    "slider_slug"=>$slug,
                    "slider_url"=>$request->slider_url,
                    "slider_file"=>$file_name,
                    "slider_content"=>$request->slider_content,
                    "slider_status"=>$request->slider_status
                ]
            );
            //birden fazla olan resmi silmek için
            $path='images/sliders/'.$request->old_file;
            if(file_exists($path))
            {
                @unlink(public_path($path));

            }
        }else{
            $slider=Sliders::Where('id',$id)->update(
                [
                    "slider_title"=>$request->slider_title,
                    "slider_slug"=>$slug,
                    "slider_url"=>$request->slider_url,
                    "slider_content"=>$request->slider_content,
                    "slider_status"=>$request->slider_status
                ]
            );
        }
    
        
        if($slider)
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
       $slider = Sliders::find(intval($id));
       if($slider->delete())
       {
           echo 1;//işlem başarılı ise
       }
       echo 0;//işlem başarısız ise
    }
}
