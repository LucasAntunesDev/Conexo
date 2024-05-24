@extends('layout')
@section('title', 'Disciplinas - Conexo')
@section('content')

<div class="flex flex-col justify-center items-center gap-2 mb-8">
    <div class="flex justify-around items-center gap-8">

        <h1 class="text-violet-500 text-5xl font-bold inline-flex gap-x-2 my-8 items-center">
            Disciplinas
        </h1>

        <button data-modal-target="crud-modal" data-modal-toggle="crud-modal"
            class="btn-primary flex items-center justify-center font-semibold" type="button">
            Adicionar disciplina
        </button>

        <div class="flex flex-col">
            <label for="pesquisar" class="label">Pesquisar</label>
            <div class="flex flex-col gap-2">
                <div class="relative mt-2 rounded-md shadow-sm">
                    <input type="text" name="pesquisar" id="pesquisar" class="input px-10">
                    <div class="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="size-5">
                            <path fill-rule="evenodd"
                                d="M9 3.5a5.5 5.5 0 1 0 0 11 5.5 5.5 0 0 0 0-11ZM2 9a7 7 0 1 1 12.452 4.391l3.328 3.329a.75.75 0 1 1-1.06 1.06l-3.329-3.328A7 7 0 0 1 2 9Z"
                                clip-rule="evenodd" />
                        </svg>
                    </div>

                </div>
            </div>
        </div>

        <div id="crud-modal" tabindex="-1" aria-hidden="true"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative p-4 w-full max-w-md max-h-full">

                <div class="relative bg-violet-100 dark:bg-neutral-900 rounded-2xl shadow">

                    <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t-2xl">
                        <h3 class=" text-lg font-semibold ">
                            Adicionar disciplina
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

                    <form action="{{ route('disciplinainsert') }}" method="POST" class="p-4 md:p-5">
                        {{ csrf_field()}}
                        <div class="flex flex-col gap-2 items-center">
                            <div class="flex flex-col gap-y-1">
                                <label for="nome" class="label capitalize">Nome</label>
                                <input type="text" id="nome" name="nome" class="input">
                            </div>

                            <div class="flex flex-col gap-y-1">

                                <label for="professor_id" class="label capitalize">Professor</label>
                                <select id="professor_id" name="professor_id" class="input">
                                    @foreach($professores as $professor)
                                    <option value='{{$professor->id}}' {{$professor->id == $disciplina->professor_id
                                        ? "selected" :
                                        ""}}>{{$professor->nome}} </option>
                                    @endforeach
                                </select>
                            </div>

                        </div>
                        <button type="submit"
                            class="btn-primary flex items-center mt-4 justify-center self-baseline spin">
                            <span>Salvar</span>
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

    </div>

    <div class="grid grid-cols-4 grid-rows-4 gap-2 p-4 justify-items-center">

        @foreach($disciplinas as $disciplina)

        <div class="bg-violet-100 dark:bg-neutral-800 w-fit p-6 rounded-xl h-auto lista-item">

            <div class="flex flex-col gap-3">
                <a href="{{ route('disciplinaform', ['id' => $disciplina->id]) }}"
                    class="flex text-violet-900 dark:text-violet-300 font-semibold w-56 text-lg lista-titulo">{{
                    $disciplina->nome
                    }}</a>
                <span class="text-gray-500 dark:text-neutral-300 font-medium text-sm">
                    {{App\Models\Professor::find($disciplina->professor_id)->nome}}
                </span>
            </div>

            <form method="POST" action="{{ route('disciplinadelete', ['id'=> $disciplina->id]) }}"
                class="w-auto mx-auto pt-4">
                <input type="hidden" name="_method" value="DELETE">
                {{ csrf_field()}}
                <div class="flex gap-x-2 px-14 justify-between items-center">
                    <a href="{{ route('disciplinaform', ['id' => $disciplina->id]) }}"
                        class='text-current hover:text-emerald-600 hover:cursor-pointer transition duration-300 ease-in-out'>

                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="size-5">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
                        </svg>

                    </a>

                    @include('includes.delete_btn')
                </div>
            </form>

        </div>

        @endforeach

    </div>
    
    {{ $disciplinas->links('includes.pagination') }}
</div>

@endsection

@section('scripts')
@vite(['resources/js/app.js'])