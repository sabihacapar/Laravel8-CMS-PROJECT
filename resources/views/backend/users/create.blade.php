@extends('backend.layout')
@section('content')
<section class="content-header">
   <div class="box box-primary">
     <div class="box-header width-border">
       <h3 class="box-title">User Ekle</h3>
     </div>
     <div class="box-body">
      <form action=" {{route('user.store')}} " method="POST" enctype="multipart/form-data">
        @csrf 
        
        <div class="form-group">
          <label>Resim Seç</label>
        <div class="row"> 
          <div class="col-xs-12">

           
            <input class="form-control" name="user_file" required   type="file">

          </div>
        </div>
        </div>


        <div class="form-group">
          <label>Ad Soyad</label>
        <div class="row"> 
          <div class="col-xs-12">
            <input class="form-control"  type="text" name="name">

          </div>
        </div>
        </div>
        <div class="form-group">
          <label>Kullanıcı Adı</label>
        <div class="row"> 
          <div class="col-xs-12">
            <input class="form-control"  type="email" name="email">

          </div>
        </div>
        </div>
        <div class="form-group">
          <label>Şifre</label>
        <div class="row"> 
          <div class="col-xs-12">
            <input class="form-control"  type="password" name="password">

          </div>
        </div>
        </div>
       



<div class="form-group">
  <label>Durum</label>
<div class="row"> 
  <div class="col-xs-12">

    <select name="user_status" class="form-control">
      <option value="1">Aktif</option>
      <option value="0">Pasif</option>

    </select>

   
  </div>
</div>



<div class="box-footer" align="right">
  <button type="submit" class="btn btn-success">Ekle</button>
</div>
</div>
      </form>
     </div>
   </div>
  </section>

  
  


@endsection
@section('css')@endsection
@section('js')@endsection