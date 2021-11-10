<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['user']=User::all()->sortBy('user_must');
  
        return view('backend.users.index',compact('data'));
    }


    public function sortable()
    {
        foreach($_POST['item'] as $key=>$value)
        {
            //seçme işlemi
            $users=User::find(intval($value));//hangi veriye kadetmek istiyordsak ona göre find methodu kullanılır
        //intval methodu ile belirtilmesse çalışmaz
        $users->user_must=intval($key);
        $users->save();
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
        return view('backend.users.create');
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
            'name'=>'required',
            'email'=>'required|email',
            'password'=>'required|Min:6'

        ]);
      
        //bir görsel yüklemek için doğrulama işlemleri
        if($request->hasFile('user_file'))
        {
            
        $request->validate([
            'user_file'=>'required|image|mimes:jpg,jpeg,png|Max:2048',

        ]);
            
            $file_name=uniqid().'.'.$request->user_file->getClientOriginalExtension();//gelen dosyanın orjinal ismini alıp aktarır
            $request->user_file->move(public_path('images/users'),$file_name);
        }else{
            $file_name=null;
        }
    
        $user=User::insert(
            [
                "name"=>$request->name,
                "email"=>$request->email,

                "password"=>Hash::make($request->password),
                "user_file"=>$file_name,
                "user_status"=>$request->user_status
               
            ]
        );
        if($user)
        {
            return redirect(route('user.index'))->with('success','İşlem başarılı');
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
        $users=User::where('id',$id)->first();
        return view('backend.users.edit')->with('users',$users);
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
        $request->validate([
            'name'=>'required',
            'email'=>'required|email',

        ]);
       
        //bir görsel yüklemek için doğrulama işlemleri
        if($request->hasFile('user_file'))
        {
            $request->validate([
                'user_file'=>'required|image|mimes:jpg,jpeg,png|Max:2048',

            ]);
            $file_name=uniqid().'.'.$request->user_file->getClientOriginalExtension();//gelen dosyanın orjinal ismini alıp aktarır
            $request->user_file->move(public_path('images/users'),$file_name);
            if(strlen($request->password)>0)
            {
                $request->validate([
                    
                    'password'=>'required|Min:6'
        
                ]);

                $user=User::Where('id',$id)->update(
                    [
                        "name"=>$request->name,
                        "password"=>Hash::make($request->password),
                        "user_file"=>$file_name,
                        "email"=>$request->email,
                        "user_status"=>$request->user_status
                    ]
                );

            }else{

                $user=User::Where('id',$id)->update(
                    [
                        "name"=>$request->name,
                        "user_file"=>$file_name,
                        "email"=>$request->email,
                        "user_status"=>$request->user_status
                    ]
                );

            }
           
            //birden fazla olan resmi silmek için
            $path='images/users/'.$request->old_file;
            if(file_exists($path))
            {
                @unlink(public_path($path));

            }
        }else{
            if(strlen($request->password)>0)
            {
                $request->validate([
                    
                    'password'=>'required|Min:6'
        
                ]);
                $user=User::Where('id',$id)->update(
                    [
                        "name"=>$request->name,
                        "password"=>Hash::make($request->password),
                        "email"=>$request->email,
                        "user_status"=>$request->user_status
                    ]
                );
            }else{
                $user=User::Where('id',$id)->update(
                    [
                        "name"=>$request->name,
                        "email"=>$request->email,
                        "user_status"=>$request->user_status
                    ]
                );
                
            }
          
        }
    
        
        if($user)
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
       $user = User::find(intval($id));
       if($user->delete())
       {
           echo 1;//işlem başarılı ise
       }
       echo 0;//işlem başarısız ise
    }
}
