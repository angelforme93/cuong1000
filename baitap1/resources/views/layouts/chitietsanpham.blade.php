@extends('adminFE')
@section('title')
Vietpro Shop - Hoàn thành
@stop
@section('content')

	
	
	

					<div id="wrap-inner">
						<div id="product-info">
							<div class="clearfix"></div>
							<h3>{{$data->prod_slug}}</h3>
							<div class="row">
								<div id="product-img" class="col-xs-12 col-sm-12 col-md-3 text-center">
									<img src="img/home/{{$data->prod_img}}">
								</div>
								<div id="product-details" class="col-xs-12 col-sm-12 col-md-9">
									<p>Giá: <span class="price">{{number_format($data->prod_price)}}</span></p>
									<p>Bảo hành: {{$data->prod_warranty}}</p> 
									<p>Phụ kiện:  {{$data->prod_accessories}}</p>
									<p>Tình trạng:  {{$data->prod_condition}}</p>
									<p>Khuyến mại: Hỗ trợ trả góp 0% dành cho các chủ thẻ Ngân hàng Sacombank</p>
									<p>Còn hàng:
                                        @if($data->	prod_status==1)
                                         Còn hàng
                                         @else
                                         Hết hàng
                                         @endif
                                        </p>
									<p class="add-cart text-center"><a href="themgiohang/{{$data->id}}"  id="them_giohang" style="background-color:blue;padding:0.4em 1.3em;color:white;border-radius:10%;outline:none;">Đặt hàng</a></p>
									<script type="text/javascript">
									$(document).ready(function(){
												$.ajaxSetup({
																headers: {
																	'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
																}
															});
                           			$('#them_giohang').click(function(event){
                            			event.preventDefault();
										$id_query={{$data->id}};
										$.ajax({
                                    url : 'themgiohang/{{$data->id}}',
                                    type: "get",
                                    data: {{$data->id}},
                                    dataType:"json",
                                    
                                    success: function(data){
										
										var html=data.data;

										$('#soluong_giohang').empty();
										 $('#soluong_giohang').append(html);
									}
										
									   });
									});
									})

									</script>
								
								</div>
							</div>							
						</div>
						<div id="product-detail">
							<h3>Chi tiết sản phẩm</h3>
							<p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
								proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</div>
						<div id="comment">
							<h3>Bình luận</h3>
							<div class="col-md-9 comment">
								<form action="search/{{$data->id}}" method="post" id="foorm">
									<div class="form-group">
                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">

										<label for="email">Email:</label>
										<input required type="email" class="form-control email" id="email" name="email">
									</div>
									<div class="form-group">
										<label for="name">Tên:</label>
										<input required type="text" class="form-control name" id="name" name="name">
									</div>
									<div class="form-group">
										<label for="cm" >Bình luận:</label>
										<textarea required rows="10" id="cm" class="form-control comment_content" name="content"></textarea>
									</div>
									<div class="form-group text-right">
										<button type="button" class="btn btn-default" id='i_cm'>Gửi</button>
									</div>
								</form>
							</div>
						</div>
						<div id="comment-list">
                            @foreach($comm as $com)
							<ul style="list-style:none;">
								<li class="com-title" style="font-weight:700;">
									{{$com->com_email}}
									<br>
									<span style="font-weight:300;font-size:13px;">{{$com->created_at}}</span>	
								</li>
								<li class="com-details">
                                {{$com->com_content}}
								</li>
							</ul>
							@endforeach
						</div>
					</div>					
                    <!-- end main -->
                    <script type="text/javascript">
                                                       
                        $(document).ready(function(){
                            $.ajaxSetup({
                                            headers: {
                                                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                            }
                                        });
                           $('#i_cm').click(function(event){
                            event.preventDefault();
                               var arr={
                                   email:$('.email').val(),
                                   name:$('.name').val(),
                                   comment:$('.comment_content').val(),
                              };
                              $.ajax({
                                    url : $("#foorm").attr('action'),
                                    type: "post",
                                    data: arr,
                                    dataType:"json",
                                    
                                    success: function(data){
										var str='';
			
					str+='<ul style="list-style:none;">'+
								'<li class="com-title" style="font-weight:700;">'+
									data.data.com_email+
									'<br>'+
									'<span style="font-weight:300;font-size:13px;">'	+  data.data.created_at+'</span>'+	
								'</li>'+
								'<li class="com-details">'+
								data.data.com_content+
								'</li>'+
							'</ul>';
							
				
				
				
									$('#comment-list').prepend(str);			
							
                                    }
                        });
                    });
                })          

                    </script>


				
	<!-- endmain -->

	<!-- footer -->
    @stop