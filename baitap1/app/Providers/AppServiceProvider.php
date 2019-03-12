<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Danhmuc;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('adminFE',function($view){
            $danhmuc=Danhmuc::all();
            $view->with('danhmuc',$danhmuc);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
