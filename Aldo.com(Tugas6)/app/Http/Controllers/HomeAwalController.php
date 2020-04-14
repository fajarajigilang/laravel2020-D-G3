<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeAwalController extends Controller
{
       public function homeawal()
       {
           return view('homeawal');
       }

       public function menu()
       {
           return view('menu');
       }

       public function about()
       {
           return view('about');
       }

       public function profile()
       {
           return view('profile');
       }

    

       
}
