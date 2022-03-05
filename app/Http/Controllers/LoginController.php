<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Str;

class LoginController extends Controller
{
    //Need login credentials(email, password) and api token
    public function loginUser(Request $request)
    {

    }

    public function makeToken(Request $request)
    {

    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'name' => 'required',
            'password' => 'required',
          ]);

        if($validator->fails())
        {
            return response()->json($validator->getMessageBag(),400);
        }

        $user = new User();
        
        $user->name =  $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->email_verified_at = now();
        $user->remember_token = Str::random(10);

        $user->save();
        return response()->json([
            "message" => "user ".$user->name." created"
          ], 200);
    }
}
