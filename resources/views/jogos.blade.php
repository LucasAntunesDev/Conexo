@extends('layout')
@section('title', 'Jogos - Conexo')
@section('content')

<div class="flex flex-col">
    <div class="flex my-4 items-center w-6/12 mx-auto justify-between px-3">
        <div class="w-fit flex items-center gap-x-3">
            <a href="{{ route('inicio')}}" class="inline-block hover:bg-violet-200 rounded-full p-1">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6">
                    <path fill-rule="evenodd"
                        d="M11.03 3.97a.75.75 0 0 1 0 1.06l-6.22 6.22H21a.75.75 0 0 1 0 1.5H4.81l6.22 6.22a.75.75 0 1 1-1.06 1.06l-7.5-7.5a.75.75 0 0 1 0-1.06l7.5-7.5a.75.75 0 0 1 1.06 0Z"
                        clip-rule="evenodd" />
                </svg>
            </a>
            <span class="font-bold" id="dataAtual"></span>


        </div>

        <h2 class="font-bold mx-auto text-2xl">CONEXO</p>
    </div>

    <main class="flex flex-col gap-2 w-screen justify-center items-center grow">
        <h3 class="mx-auto font-semibold text-xl">Todos os jogos</h3>

        <button data-modal-target="crud-modal" data-modal-toggle="crud-modal"
                class="btn-primary flex items-center justify-center font-semibold" type="button">
                Criar jogo
            </button>

            <div id="crud-modal" tabindex="-1" aria-hidden="true"
                class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">

                    <div class="relative bg-violet-50 dark:bg-neutral-900 rounded-lg shadow">

                        <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t">
                            <h3 class=" text-lg font-semibold ">
                                Criar jogo
                            </h3>
                            <button type="button"
                                class="text-violet-400 bg-transparent hover:bg-violet-100 hover:text-violet-700 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center "
                                data-modal-toggle="crud-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                            </button>
                        </div>

                        <form action="{{ route('jogoinsert') }}" method="POST" class="p-4 md:p-5">
                            {{ csrf_field()}}
                            <div class="flex flex-col gap-y-1">
                                <label for="nome" class="font-semibold text-violet-500 capitalize">Nome</label>
                                <input type="text" id="nome" name="nome" value='' class="input">
                            </div>

                            <div class="flex flex-col gap-y-1">
                                <label for="disciplina_id"
                                    class="font-semibold text-violet-500 capitalize">Disciplina</label>
                                <select id="disciplina_id" name="disciplina_id"
                                    class="input">
                                    {{-- @php
                                        $disciplinas = App\Models\Disciplinas::all();
                                    @endphp--}}
                                    @foreach($disciplinas as $disciplina)
                                    <option value='{{$disciplina->id}}'>{{$disciplina->nome}} </option>
                                    @endforeach
                                </select>
                            </div>

                            <button type="submit"
                                class="btn-primary flex items-center mt-4 justify-center self-baseline spin">
                                <span>Criar</span>
                                <svg id="spinner" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                    stroke-linecap="round" stroke-linejoin="round" class="animate-spin hidden">
                                    <path d="M21 12a9 9 0 1 1-6.219-8.56" />
                                </svg>
                            </button>
                        </form>
                    </div>
                </div>
            </div>

        <form action="#">
            <select name="dia" id="dia" class="btn-secundary border-none">
                @for($i = 1; $i <= 31; $i++){ <option value={{$i}}>{{$i}}</option>
                    }
                    @endfor
            </select>
            <select name="mes" id="mes" class="btn-secundary border-none">
                @php
                $meses = ["janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho", "agosto", "setembro",
                "outubro", "novembro", "dezembro"];
                @endphp

                @foreach($meses as $mes)
                { <option value={{$mes}}>{{$mes}}</option>
                }
                @endforeach

            </select>
        </form>
        {{-- <span
            class="inline-flex gap-x-4 items-center bg-violet-600 hover:bg-violet-700 text-violet-50 rounded-xl py-3 px-6 hover:cursor-pointer text-semibold"
            id="buscarDisciplina">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6">
                <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
            </svg>
        </span> --}}
</div>


<nav class="bg-violet-100  px-4 py-8 rounded-lg items-center gap-4 hidden w-4/5 mx-auto my-4" id="menu-disciplinas">
    <div class="flex gap-x-4 items-center w-8/12 flex-wrap mx-auto">
        @for($i = 0; $i< (count($disciplinas)); $i++) <div value="{{$disciplinas[$i]->id}}" class="flex flex-col gap-4">
            <a href="{{ route('jogos', ['disciplinaId' => $disciplinas[$i]->id]) }}"
                class="bg-violet-500 rounded-lg p-3 text-violet-100"> {{$disciplinas[$i]->nome}}</a>
            <br>
    </div>
    @endfor
    </div>
</nav>

<div class="grid grid-cols-4 grid-rows-4 gap-2 p-4 justify-items-center">
        @foreach ($jogos as $jogo)
        <div class="bg-violet-100 dark:bg-neutral-800 w-fit p-6 rounded-lg h-auto">

            <div class="flex flex-col gap-3">
                <a href="{{ route('diario', ['id' => $jogo->id]) }}" class="flex text-violet-900 dark:text-violet-300 font-semibold w-56">{{ $jogo->nome }}</a>
                <span class="text-gray-500 dark:text-neutral-300 font-medium text-sm">
                    {{$jogo->data}}
                </span>
            </div>

            <form method="POST" action="{{ route('jogodelete', ['id'=> $jogo->id]) }}" class="w-auto mx-auto pt-4">
                <input type="hidden" name="_method" value="DELETE">
                {{ csrf_field()}}
                <div class="flex gap-x-2 px-14 justify-between items-center">
                    <a href="{{ route('jogoform', ['id' => $jogo->id]) }}"
                        class='text-current hover:text-emerald-600 hover:cursor-pointer transition duration-300 ease-in-out'>

                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="size-5">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
                        </svg>

                    </a>

                    {{-- @include('includes.delete_btn') --}}
                    <button type="submit"
                        class='text-current hover:text-red-600 hover:cursor-pointer transition duration-300 ease-in-out'>

                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="size-5">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                        </svg>
                    </button>
                </div>
            </form>

        </div>

        @endforeach

    </div>

    {{ $jogos->links('includes.pagination') }}
</div>



</main>
</div>

@section('scripts')
@vite(['resources/js/app.js'])