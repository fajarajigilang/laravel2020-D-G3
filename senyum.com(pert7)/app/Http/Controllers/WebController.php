<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
 
use App\Article;
 
class WebController extends Controller
{
   public function article(){
   	 $artikel = Article::all();
    	 return view('article',['artikel' => $artikel]);
   }
}
