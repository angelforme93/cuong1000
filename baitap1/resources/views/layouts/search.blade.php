@extends('adminFE')
@section('content')
					<div id="wrap-inner">
						<div class="products">
							<h3>{{$tukhoa}}</h3>
							<div class="product-list row" id="list_sanpham">
							@foreach($data as $sanpham1)
								<div class="product-item col-md-3 col-sm-6 col-xs-12">
									<a href=""><img src="img/home/{{$sanpham1->prod_img}}" class="img-thumbnail"></a>
									<p><a href="#">{{$sanpham1->prod_name}}</a></p>
									<p class="price">{{number_format($sanpham1->prod_price)}}</p>	  
									<div class="marsk">
										<a href="chitietsp/{{$sanpham1->id}}">Xem chi tiết</a>
									</div>                                    
								</div>
								@endforeach
								
							</div>  
						      	                	
						</div>

						
				
					
					</div>
					<div class="row" style="margin-left: 25em;margin-top: 4em;">{{$data->links()}}</div>
    <!-- <script type="text/javascript">
        $(document).ready(function(){
            var query= $('#tu_tim_kiem').text;
            alert(query);
        } );
    </script> -->

@stop
					<!-- end main -->
		