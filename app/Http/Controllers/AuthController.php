<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Professor;
use Illuminate\Support\Facades\Hash;


class AuthController extends Controller {
    public function login() {
        return view('auth.login');
    }

    public function fazerLogin(Request $request) {
        
        $login = $request->input('login');
        
        $senha = $request->input('senha');
        
        $user = Professor::where('login', $login)->first();
        
        $senha_hasheada =  Hash::check($senha, $user->senha);

        $messages = [
            'login.required' => 'Você deve preencher o seu login',
            'senha.required' => 'Você deve preencher a sua senha'
        ];

        $validator = Validator::make($request->all(), [
            'login' => 'required|max:255',
            'senha' => 'required',
        ], $messages);

        if ($user && $senha_hasheada) {
            Auth::login($user);
    
            return redirect()->intended('/');
        }
    
        return back()->withErrors($validator)->withInput();
    }

    public function logout() {
        Auth::guard('web')->logout();
        
        return redirect('/');
    }
}
