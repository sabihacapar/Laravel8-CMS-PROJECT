<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class DefaultController extends Controller
{
    public function index()
    {
        return view('backend.default.index');

    }

    public function login()
    {
        return view('backend.default.login');

    }
    public function authenticate(Request $request)
    {

        $request->flash();//maili input alanında tutmak için kullanılır

        $credentials=$request->only('email','password');//sadece belirlenen öğeleri al

        $remember_me=$request->has('remember_me') ? true:false;
        //giriş kontrolünü uygulamak için gerekli olan şart
        if(Auth::attempt($credentials,$remember_me))//doğrulama işlemi
        {
            return redirect()->intended(route('nedmin.Index'));//intended son gönderiline sayfayı hafızaya alır
        }
        else{
            return back()->with('error','hatalı kullanıcı adı veya şifre');
        }

    }
    public function logout(){
        Auth::logout();
        return redirect(route('nedmin.Login'))->with('success','Güvenli çıkış yapıldı');
    }
}
