<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Settings;//modeli ekledik

class SettingsController extends Controller
{
    public function index()
    {

        //veri çekmek için gerekli olan kod blogları
        $data['adminSettings']=Settings::all()->sortBy('settings_must');//veri çekme kısmı

        return view('backend.settings.index',compact('data'));//veri compact ile gönderildi
        
    }
    public function sortable()
    {
        foreach($_POST['item'] as $key=>$value)
        {
            //seçme işlemi
            $settings=Settings::find(intval($value));//hangi veriye kadetmek istiyordsak ona göre find methodu kullanılır
        //intval methodu ile belirtilmesse çalışmaz
        $settings->settings_must=intval($key);
        $settings->save();
        }
        echo true;

    }

    public function destroy($id)
    {

        $settings=Settings::find($id);
        if($settings->delete())
        {
            return back()->with('success','İşlem başarılı');
        }

        return back()->with('error','İşlem başarısız');


    }
    public function edit($id)
    {
        $settings=Settings::where('id',$id)->first();
        return view('backend.settings.edit')->with('settings',$settings);
    }

    public function update(Request $request,$id)
    {
        if($request->hasFile('settings_value'))
        {
            $request->validate([
                'settings_value'=>'required|image|mimes:jpg,jpeg,png|max:2048'
              
            ]);
            $file_name=uniqid().'.'.$request->settings_value->getClientOriginalExtension();//gelen dosyanın uzantısını alır
            $request->settings_value->move(public_path('images/settings'),$file_name);
            $request->settings_value=$file_name;//kayıt işlemi dosya ismi olarak gerçekleşir
        }

        $settings=Settings::Where('id',$id)->update(
            [
                "settings_value"=>$request->settings_value
            ]
            );
            if($settings){
                $path='images/settings/'.$request->old_file;
                if(file_exists($path))//dosya varlık kontrolü
                {
                    @unlink(public_path($path));//dosyayı sil

                }
            return back()->with("success","Düzenleme işlemi başarılı");
        }else{
            return back()->with("error","Düzenleme işlemi başarısız");

        }
    }
}
