<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Danhmuc;
use App\Sanpham;
use App\Comment;
use App\Bill;
use App\Chitietbill;
use Cart;
use Validator;

class FEContro extends Controller
{
    public function index()
    {   
        $sanpham=Sanpham::paginate(8);
      
     
        return view('layouts.trangchu',compact('sanpham'));
    }
    public function sp_danhmuc($id)
    {
        $sp_danhmuc=Sanpham::where('prod_cate',$id)->paginate(8);
       
        return view('layouts.category',compact('sp_danhmuc'));
    }
    public function search(Request $req)
    {
          $tukhoa=$req->text;
          $query=str_replace(' ','%', $tukhoa);
          $data=Sanpham::where('prod_name','like','%' . $query . '%')->paginate(8);
          return view('layouts.search',compact('data','tukhoa'));
      
    }
    public function chitietsp($id)
    {
        $comm=Comment::where('com_product',$id)
        ->orderByRaw('created_at DESC') ->get();
        
        $data=Sanpham::where('id',$id)->first();
        return view('layouts.chitietsanpham',compact('data','comm'));
    }
    public function insertCm($id,Request $req)
    {
        $cmm=new Comment;
        
        $cmm->com_email=$req->email;
        $cmm->com_name=$req->name;
        $cmm->com_content=$req->comment;
        $cmm->com_product=$id;
        $cmm->save();
         return response()->json(['data'=>$cmm]);      
    }

    public function themgiohang($id)
    {   
        $sanpham=Sanpham::find($id);

        $arr=([
            'id'=>$id,
            'name'=>$sanpham->prod_slug,
            'qty'=>1,
            'price'=>$sanpham->prod_price,
            'options' => [
                'img'=>$sanpham->prod_img
                ]
            ]);

            Cart::add($arr);
            return response()->json(['data'=>Cart::Count()]);
           
    }


    public function giohang()
    {
       
        return view ('layouts.cart');
    }
    public function xoagiohang(Request $req)
    {
        Cart::remove($req->rowId);
        
    }
    public function xoatoangio()
    {
        Cart::destroy();
        return response()->json(['data'=>Cart::Count()]);
    }
    public function suagiohang(Request $req)
    {
       
         Cart::update($req->rowId,$req->qty);       

    }
    public function xacnhan(Request $req)
    {
        $this->validate($req,
            [
                'name'=>'required|min:4|max:30',
                'phone'=>'required|min:8|max:14',
                'add'=>'required|min:3|max:200',
            ],
            [
                'name.required'=>'Bạn chưa nhập tên',
                'name.min'=>'Họ tên phải từ 4 - 30 ký tự',
                'name.max'=>'Họ tên phải từ 4 - 30 ký tự',
                'phone.required'=>'Bạn cần nhập SĐT',
                'phone.min'=>'Bạn nhập chưa đúng số điện thoại',
                'phone.max'=>'Bạn nhập chưa đúng số điện thoại',
                'add.required'=>'Bạn cần nhập địa chỉ',
                'add.min'=>'Bạn cần nhập địa chỉ',
                'add.max'=>'Bạn cần nhập địa chỉ',
            ]
            );

         $arr=[
             'email'=>$req->email,
             'hoten'=>$req->name,
             'sdt'=>$req->phone,
             'diachi'=>$req->add
         ];
         Bill::insert($arr);
        $cart=Cart::Content();
        foreach ($cart as $item) {
            $sp=[
                
                'qty'=>$item->qty,
                'price'=>$item->price,
                'id_bill'=>$req->email,
                'id_sp'=>$item->id
            ];
            Chitietbill::insert($sp);
            
        }
        return back()->with('thongbao','Đặt hàng thành công');
    }
    
}
