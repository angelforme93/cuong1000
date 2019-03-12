@extends('adminFE')
@section('title')
Vietpro Shop - Giỏ hàng
@stop
@section('content')
<script type="text/javascript">
		$(function() {
			$('.chang_soluong').change(function(){
				var qty=$('.chang_soluong').val();										
			});
			$('.xoa_toan_gio').click(function(e){
				e.preventDefault();
										
										$.ajax({
											
                                    url : 'xoatoangio',
                                    type: "get",
                                   
                                    dataType:"json",
                                    
                                    success: function(data){
										
										var html=0;

										$('#soluong_giohang').empty();
										 $('#soluong_giohang').append(html);
										 $('.tong_gia').empty();
										 $('.tong_gia').append(html);
										  $('table').find('tr.sp').empty();

										 

									}
										
									   
			});
		});
		})
	</script>


					<div id="wrap-inner">
						<div id="list-cart">
							<h3>Giỏ hàng</h3>
							<form>
								<table class="table table-bordered .table-responsive text-center">
									<tr class="active">
										<td width="11.111%">Ảnh mô tả</td>
										<td width="22.222%">Tên sản phẩm</td>
										<td width="22.222%">Số lượng</td>
										<td width="16.6665%">Đơn giá</td>
										<td width="16.6665%">Thành tiền</td>
										
										<td width="11.112%">Xóa</td>
									</tr>
									<div id="chitiet_sp">

									@foreach( Cart::Content() as $cart)
									
									<tr class="sp sp-{{$cart->id}}">
									
										<td><img class="img-responsive" src="img/home/{{$cart->options['img']}}"></td>
										<td>{{$cart->name}}</td>
										<td>
										
											<div class="form-group">
											<form method="post">
												<input class="form-control chang_soluong {{$cart->rowId}}" id="{{$cart->rowId}}" type="number" value="{{$cart->qty}}" name="soluong"
												onchange="updateCart(this.value,'{{$cart->rowId}}')" >
											</form>
											</div>

										</td>
										<td><span class="price don_gia" {{$cart->rowId}}>{{number_format($cart->price)}}</span></td>
										<td><span class="price price_total  ">
										<span class="{{$cart->rowId}}">
										{{number_format($cart->price*$cart->qty)}} 
										</span>
										</span></td>
										
										
										<td><a disable id="xoa_giohang"  onclick="deleteCart('{{$cart->rowId}}')" style="cursor: pointer;">Xóa</a></td>
										
									</tr>
									<script type="text/javascript">
										function updateCart(qty,rowId){
											$.get(
												'suagiohang',
												{qty:qty,rowId:rowId},
												function(){
													location.reload();
												}

											);
										}

										function deleteCart(rowId){
											$.get(
												'xoagiohang',
												{rowId:rowId},
												function(){
													location.reload();
												}

											);
										}
									</script>
									@endforeach
									
									</div>
								</table>
								<div class="row" id="total-price">
									<div class="col-md-6 col-sm-12 col-xs-12">										
											Tổng thanh toán: <span class="total-price tong_gia">{{Cart::total()}}</span>
																													
									</div>
									<div class="col-md-6 col-sm-12 col-xs-12">
										<a href="index" class="my-btn btn">Mua tiếp</a>
										
										<a href="xoatoangio" class="my-btn btn xoa_toan_gio">Xóa giỏ hàng</a>
									</div>
								</div>
							</form>             	                	
						</div>

						<div id="xac-nhan">
							<h3>Xác nhận mua hàng</h3>
							<form action="xacnhan" method="post">
							
							@if (count($errors) > 0)
								<div class="alert alert-danger">
									<ul>
										@foreach ($errors->all() as $error)
											<li>{{ $error }}</li>
										@endforeach
									</ul>
								</div>
							@endif
							@if(session('thongbao'))
									<div class="alert alert-success">

										{{session('thongbao')}} 
										<br>
										
									</div>
									@endif
								<div class="form-group">
								<input type="hidden" name="_token" value="{{csrf_token()}}">
									<label for="email">Email address:</label>
									<input required type="email" class="form-control" id="email" name="email">
								</div>
								<div class="form-group">
									<label for="name">Họ và tên:</label>
									<input required type="text" class="form-control" id="name" name="name">
								</div>
								<div class="form-group">
									<label for="phone">Số điện thoại:</label>
									<input required type="number" class="form-control" id="phone" name="phone">
								</div>
								<div class="form-group">
									<label for="add">Địa chỉ:</label>
									<input required type="text" class="form-control" id="add" name="add">
								</div>
								<div class="form-group text-right">
								
									<button type="submit" class="btn btn-default">Thực hiện đơn hàng</button>
								</div>
							</form>
						</div>
					</div>

	

@stop