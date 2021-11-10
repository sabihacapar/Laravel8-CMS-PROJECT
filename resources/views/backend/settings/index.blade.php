@extends('backend.layout')
@section('content')
<section class="content-header">
   <div class="box box-primary">
     <div class="box-header width-border">
       <h3 class="box-title">Settings</h3>
     </div>
     <div class="box-body">
       <p>
         <table class="table table-striped">
           <thead>
             <tr>
               <th>ID</th>
               <th>Açıklama</th>
               <th>İçerik</th>
               <th>Anahtar Değer</th>
               <th>Tip</th>
               <th></th>
               <th></th>
             </tr>
             <tbody id="sortable">
               @foreach ($data['adminSettings'] as $adminSettings)
                   
               
               <tr id="item-{{$adminSettings->id}}">
                 <td>{{$adminSettings->id}}</td><!--nesne işaretlemesi ile çekme-->
                 <td class="sortable">{{$adminSettings['settings_description']}}</td>
                 <td>
                  
                   
    @if($adminSettings['settings_type']=="file")
    <img width="100" src="/images/settings/{{$adminSettings['settings_value']}}" alt="">
    @else
    {{$adminSettings['settings_value']}}
        @endif
                  </td>
                 <td>{{$adminSettings['settings_key']}}</td>
                 <td>{{$adminSettings['settings_type']}}</td>
                 <td width="5"><a href="{{route('settings.Edit',['id'=>$adminSettings->id])}}"><i class="fa fa-pencil-square"></i></a></td>
                 <td width="5">
                   @if($adminSettings->settings_delete)

                   <a href="javascript:void(0)"><i id="@php echo $adminSettings->id  @endphp" class="fa fa-trash-o"></i></a>
                   @endif

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
       revert:true,//jquery ui ile ilgili kod blogları
       handle:".sortable",
       stop:function(event,ui,){
         var data =$(this).sortable('serialize');//tüm id bilgileri gönderilir
         $.ajax({
           type:"POST",
           data:data,
           url:"{{route('settings.Sortable')}}",
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
        location.href="/nedmin/settings/delete/"+destroy_id;//yönlendirme işlemini gerçekleştirmek için 


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