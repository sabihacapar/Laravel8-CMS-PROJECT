@extends('backend.layout')
@section('content')
<section class="content-header">
   <div class="box box-primary">
     <div class="box-header width-border">
       <h3 class="box-title">User</h3>
       <div align="right">
         <a href="{{route('user.create')}}"><button class="btn btn-success">Ekle</button></a>
       </div>
     </div>
     <div class="box-body">
       <p>
         <table class="table table-striped">
           <thead>
             <tr>
               <th>Görsel</th>
               <th>Ad Soyad</th>
               
               <th></th>
               <th></th>
             </tr>
             <tbody id="sortable">
               @foreach ($data['user'] as $user)
                   
               
               <tr id="item-{{$user->id}}">
                <td class="sortable" with="150"><img width="100" src="/images/users/{{$user->user_file}}" alt=""></td>

                 <td >{{$user->name}}</td>
          

                 <td width="5"><a href="{{route('user.edit',$user->id)}}"><i class="fa fa-pencil-square"></i></a></td>
                 <td width="5">
                 

                   <a href="javascript:void(0)"><i id="@php echo $user->id  @endphp" class="fa fa-trash-o"></i></a>
                 

                  </td>

               </tr>
               @endforeach
             </tbody>
           </thead>
         </table>
       </p>
     </div>
   </div>
  </section>

  <script type="text/javascript">
    $(function(){
      $.ajaxSetup({
        headers:{
          'X-CSRF-TOKEN' : $('meta[name="csrf-token"]').attr('content')
        }
      });
     $('#sortable').sortable({
       revert:true,//jquery ui ile ilgili kod userları
       handle:".sortable",
       stop:function(event,ui,){
         var data =$(this).sortable('serialize');//tüm id bilgileri gönderilir
         $.ajax({
           type:"POST",
           data:data,
           url:"{{route('user.Sortable')}}",
           success:function(msg){
             if(msg){
               alertify.success("işlem başarılı"); 
             }
             else{
               alertify.error("işlem başarısız");
             }
           }
         });
       }
     });
     $('#sortable').disableSelection();
    });

    //silme işlemi için

    $(".fa-trash-o").click(function(){

      destroy_id=$(this).attr('id');

      alertify.confirm('Silme işlemini onaylıyor musunuz?','Bu işlem geri alınamaz',
      function(){
        $.ajax({

          type:"DELETE",
          url:"user/"+destroy_id,
          success:function(msg){
            if(msg){
              $("#item-"+destroy_id).remove();//seçilen değeri siler sayfayı yenilemeden
              alertify.success("silme işlemi başarılı");


            }else{
        alertify.error('Silme işlemi başarısız');

            }

          }

        });


      },
      //iptal işlemi için
      function(){
        alertify.error('Silme işlemini iptal ettiniz');

      }
      
      
      );

    });
  </script>

  


@endsection
@section('css')@endsection
@section('js')@endsection