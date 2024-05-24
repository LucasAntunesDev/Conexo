<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('inicio');
})->name('inicio');

// Route::get('/diario', 'App\Http\Controllers\JogoController@jogo')->name('diario');


Route::prefix('jogos')->group(function () {
    Route::get('/', 'App\Http\Controllers\JogoController@index')->name('jogos');
});

Route::get('login', 'App\Http\Controllers\AuthController@login')->name('login');
Route::post('login', 'App\Http\Controllers\AuthController@fazerLogin')->name('fazerLogin');
Route::get('/logout', 'App\Http\Controllers\AuthController@logout')->name('logout');


Route::prefix('professores')->group(function () {
    // Route::get('/', 'App\Http\Controllers\ProfessorController@index')->name('professores');
    Route::get('/', 'App\Http\Controllers\ProfessorController@showProfessor')->name('professores');
    Route::get('novo', 'App\Http\Controllers\ProfessorController@create')->name('professornovo');
    Route::get('{id}', 'App\Http\Controllers\ProfessorController@edit')->name('professorform');
    Route::post('/', 'App\Http\Controllers\ProfessorController@store')->name('professorinsert');
    Route::put('{id}', 'App\Http\Controllers\ProfessorController@update')->name('professorupdate');
    Route::delete('{id}', 'App\Http\Controllers\ProfessorController@destroy')->name('professordelete');
});

Route::prefix('disciplinas')->group(function () {
    Route::get('/', 'App\Http\Controllers\DisciplinaController@index')->name('disciplinas');
    Route::get('novo', 'App\Http\Controllers\DisciplinaController@create')->name('disciplinanovo');
    Route::get('{id}', 'App\Http\Controllers\DisciplinaController@edit')->name('disciplinaform');
    Route::post('/', 'App\Http\Controllers\DisciplinaController@store')->name('disciplinainsert');
    Route::put('{id}', 'App\Http\Controllers\DisciplinaController@update')->name('disciplinaupdate');
    Route::delete('{id}', 'App\Http\Controllers\DisciplinaController@destroy')->name('disciplinadelete');
});

Route::prefix('grupos')->group(function () {
    Route::get('/', 'App\Http\Controllers\GrupoController@index')->name('grupos');
    Route::get('novo', 'App\Http\Controllers\GrupoController@create')->name('gruponovo');
    Route::get('{id}', 'App\Http\Controllers\GrupoController@edit')->name('grupoform');
    Route::post('/', 'App\Http\Controllers\GrupoController@store')->name('grupoinsert');
    Route::put('{id}', 'App\Http\Controllers\GrupoController@update')->name('grupoupdate');
    Route::delete('{id}', 'App\Http\Controllers\GrupoController@destroy')->name('grupodelete');
});

Route::prefix('palavras')->group(function () {
    Route::get('/', 'App\Http\Controllers\PalavraController@index')->name('palavras');
    Route::get('novo', 'App\Http\Controllers\PalavraController@create')->name('palavranovo');
    Route::get('{id}', 'App\Http\Controllers\PalavraController@edit')->name('palavraform');
    Route::post('/', 'App\Http\Controllers\PalavraController@store')->name('palavrainsert');
    Route::put('{id}', 'App\Http\Controllers\PalavraController@update')->name('palavraupdate');
    Route::delete('{id}', 'App\Http\Controllers\PalavraController@destroy')->name('palavradelete');
});

Route::middleware('auth')->group(function () {
    // Route::get('/login', 'App\Http\Controllers\AuthController@llogin');
    // Route::get('/diario', 'App\Http\Controllers\JogoController@jogo')->name('diario');

    Route::prefix('professores')->group(function () {
        Route::get('novo', 'App\Http\Controllers\ProfessorController@create')->name('professornovo');
        Route::get('{id}', 'App\Http\Controllers\ProfessorController@edit')->name('professorform');
        Route::post('/', 'App\Http\Controllers\ProfessorController@store')->name('professorinsert');
        Route::put('{id}', 'App\Http\Controllers\ProfessorController@update')->name('professorupdate');
        Route::delete('{id}', 'App\Http\Controllers\ProfessorController@destroy')->name('professordelete');
    });

    Route::prefix('disciplinas')->group(function () {
        Route::get('/', 'App\Http\Controllers\DisciplinaController@index')->name('disciplinas');
        Route::get('novo', 'App\Http\Controllers\DisciplinaController@create')->name('disciplinanovo');
        Route::get('{id}', 'App\Http\Controllers\DisciplinaController@edit')->name('disciplinaform');
        Route::post('/', 'App\Http\Controllers\DisciplinaController@store')->name('disciplinainsert');
        Route::put('{id}', 'App\Http\Controllers\DisciplinaController@update')->name('disciplinaupdate');
        Route::delete('{id}', 'App\Http\Controllers\DisciplinaController@destroy')->name('disciplinadelete');
    });

    Route::prefix('grupos')->group(function () {
        Route::get('/', 'App\Http\Controllers\GrupoController@index')->name('grupos');
        Route::get('novo', 'App\Http\Controllers\GrupoController@create')->name('gruponovo');
        Route::get('{id}', 'App\Http\Controllers\GrupoController@edit')->name('grupoform');
        Route::post('/', 'App\Http\Controllers\GrupoController@store')->name('grupoinsert');
        Route::put('{id}', 'App\Http\Controllers\GrupoController@update')->name('grupoupdate');
        Route::delete('{id}', 'App\Http\Controllers\GrupoController@destroy')->name('grupodelete');
    });

    Route::prefix('palavras')->group(function () {
        Route::get('/', 'App\Http\Controllers\PalavraController@index')->name('palavras');
        Route::get('novo', 'App\Http\Controllers\PalavraController@create')->name('palavranovo');
        Route::get('{id}', 'App\Http\Controllers\PalavraController@edit')->name('palavraform');
        Route::post('/', 'App\Http\Controllers\PalavraController@store')->name('palavrainsert');
        Route::put('{id}', 'App\Http\Controllers\PalavraController@update')->name('palavraupdate');
        Route::delete('{id}', 'App\Http\Controllers\PalavraController@destroy')->name('palavradelete');
    });

    Route::prefix('grupospalavras')->group(function () {
        Route::get('/', 'App\Http\Controllers\GrupoPalavraController@index')->name('grupospalavras');
        Route::get('novo', 'App\Http\Controllers\GrupoPalavraController@create')->name('grupopalavranovo');
        Route::get('{id}', 'App\Http\Controllers\GrupoPalavraController@edit')->name('grupopalavraform');
        Route::post('/', 'App\Http\Controllers\GrupoPalavraController@store')->name('grupopalavrainsert');
        Route::put('{id}', 'App\Http\Controllers\GrupoPalavraController@update')->name('grupopalavraupdate');
        Route::delete('{id}', 'App\Http\Controllers\GrupoPalavraController@destroy')->name('grupopalavradelete');
    });

    Route::prefix('jogo')->group(function () {
        // Route::get('/', 'App\Http\Controllers\JogoController@index')->name('jogos');
        Route::get('/jogo', 'App\Http\Controllers\JogoController@jogo')->name('jogo');
        Route::get('novo', 'App\Http\Controllers\JogoController@create')->name('jogonovo');
        Route::get('{id}', 'App\Http\Controllers\JogoController@edit')->name('jogoform');
        Route::post('/', 'App\Http\Controllers\JogoController@store')->name('jogoinsert');
        Route::put('{id}', 'App\Http\Controllers\JogoController@update')->name('jogoupdate');
        Route::delete('{id}', 'App\Http\Controllers\JogoController@destroy')->name('jogodelete');
    });
});