<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CategoryModel;
use App\Models\SliderModel;
use App\Models\ContactSettingsModel;
use App\Models\ProductModel;
use App\Models\ProductImagesModel;
class APIController extends Controller
{
    public function allCategory(){
        $category   = CategoryModel::orderBy('id', 'desc')->get();
        if(count($category) > 0)
        {
            foreach($category as $c)
            {
                $data[] = array(
                    'title' => $c->title,
                    'slug'  => $c->slug,
                    'image' => url('public/uploads/'.$c->image),
                );
            }
            $result = array(
                "status_code"   => 200,
                "message"       => "Success",
                "status"        =>  true,
                "data"          => $data,
            );
            return response()->json($result, 200);
        }else
        {
            $result = array(
                "status_code"   => 404,
                "message"       => "There is no Category Data",
                "status"        => true,
                "data"          => [],
            );
            return response()->json($result, 200);
        }
    }
    public function allSlider(){
        $slider   = SliderModel::orderBy('id', 'desc')->get();
        if(count($slider) > 0)
        {
            foreach($slider as $s)
            {
                $data[] = array(
                    'title' => $s->title,
                    'image' => url('public/uploads/'.$s->banner_image),
                );
            }
            $result = array(
                "status_code"   => 200,
                "message"       => "Success",
                "status"        =>  true,
                "data"          => $data,
            );
            return response()->json($result, 200);
        }else
        {
            $result = array(
                "status_code"   => 404,
                "message"       => "No Data Found",
                "status"        => true,
                "data"          => [],
            );
            return response()->json($result, 200);
        }
    }   
    public function allProducts(){
        $products   = ProductModel::orderBy('id', 'desc')->get();
        if(count($products) > 0)
        {
            foreach($products as $p)
            {
                $data[] = array(
                    'title'             => $p->title,
                    'image'             => url('public/uploads/'.$p->image),
                    'slug'              => $p->slug,
                    'category'          => CategoryModel::select('title')->where('id', $p->category)->get()->first(),
                    'price'             => $p->reg_price,
                    'sale_price'        => $p->sale_price,
                    'sku'               => $p->sku,
                    'unit_type'         => $p->unit_type,
                    'featured'          => $p->featured,
                    'popular'           => $p->popular,
                    'deals'             => $p->deals,
                    'deals_date'        => $p->deals_date,
                    'description'       => $p->description,
                    'short_description' => $p->short_description,
                    'additional_info'   => $p->additional_info,
                    'meta_title'        => $p->meta_title,
                    'meta_keyword'      => $p->meta_keyword,
                    'meta_description'  => $p->meta_description,
                    'variants'          => json_decode($p->variance_data),
                    'product_images'    => ProductImagesModel::where(['product_id' => $p->id])->orderBy('id', 'desc')->get()
                );
            }
            $result = array(
                "status_code"   => 200,
                "message"       => "Success",
                "status"        =>  true,
                "data"          => $data,
            );
            return response()->json($result, 200);
        }else
        {
            $result = array(
                "status_code"   => 404,
                "message"       => "No Data Found",
                "status"        => true,
                "data"          => [],
            );
            return response()->json($result, 200);
        }
    }
    public function info(){
        $info  = ContactSettingsModel::select('address', 'email','phone', 'logo', 'hours')->orderBy('id', 'desc')->get()->first();
        if($info)
        {
            $logo = url('public/uploads/'.$info->logo);
            $info['logo'] = $logo;

            $result = array(
                "status_code"   => 200,
                "message"       => "Success",
                "status"        => true,
                "data"          => $info,
            );
            return response()->json($result, 200);
        }else
        {
            $result = array(
                "status_code"   => 404,
                "message"       => "No Data Found",
                "status"        => true,
                "data"          => [],
            );
            return response()->json($result, 200);
        }
    }
    

}
