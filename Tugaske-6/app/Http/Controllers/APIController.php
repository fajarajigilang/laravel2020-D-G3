<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class APIController extends Controller
{
    //
    public function getDataByUser()
{
    $users = User::orderBy('created_at', 'DESC')->get();
    return response()->json(['data' => $users]);
}
}
