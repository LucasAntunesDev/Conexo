@extends('layout')
@section('title', 'Grupos - Conexo')

@section('content')
<div class="mb-8 flex flex-col items-center justify-center gap-2">
    <div class="flex items-center justify-around gap-8">
        <h1 class="my-8 inline-flex items-center gap-x-2 text-5xl font-bold text-violet-500">
            Grupos
        </h1>

        <button data-modal-target="crud-modal" data-modal-toggle="crud-modal" class="btn-primary flex items-center justify-center font-semibold" type="button">
            Adicionar grupo
        </button>

        <form method="GET" action="{{ url('/grupos') }}" class="flex items-center gap-x-2 p-0 m-0">
            <input type="text" name="nome" placeholder="Procurar grupo" value="{{ request('nome') }}" class="input">
            <button type="submit" class="btn-secundary inline-flex items-center gap-x-2 py-3 px-8 ml-4">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="size-5">
                    <path fill-rule="evenodd" d="M9 3.5a5.5 5.5 0 1 0 0 11 5.5 5.5 0 0 0 0-11ZM2 9a7 7 0 1 1 12.452 4.391l3.328 3.329a.75.75 0 1 1-1.06 1.06l-3.329-3.328A7 7 0 0 1 2 9Z" clip-rule="evenodd" />
                </svg>
                Buscar
            </button>
        </form>

        <div id="crud-modal" tabindex="-1" aria-hidden="true" class="appear fixed left-0 right-0 top-0 z-50 hidden h-[calc(100%-1rem)] max-h-full w-full items-center justify-center overflow-y-auto overflow-x-hidden md:inset-0">
            <div class="relative max-h-full w-full max-w-md p-4">
                <div class="relative rounded-2xl bg-violet-50 shadow">
                    <div class="flex items-center justify-between rounded-t-2xl border-b p-4 md:p-5">
                        <h3 class="text-lg font-semibold">Adicionar grupo</h3>
                        <button type="button" class="ms-auto inline-flex h-8 w-8 items-center justify-center rounded-lg bg-transparent text-sm text-violet-400 hover:text-violet-700" data-modal-toggle="crud-modal">
                            <svg class="h-3 w-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                            </svg>
                        </button>
                    </div>

                    <form action="{{ route('grupoinsert') }}" method="POST" class="p-4 md:p-5">
                        {{ csrf_field() }}
                        <div class="flex flex-col gap-y-1">
                            <label for="nome" class="label capitalize">Nome</label>
                            <input type="text" id="nome" name="nome" value="" class="input" />
                        </div>

                        <button type="submit" class="btn-primary spin mt-4 flex items-center justify-center self-baseline">
                            <span>Salvar</span>
                            <div class="btn-loader hidden"></div>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="grid grid-cols-4 grid-rows-4 gap-4 max-w-[90%]">
        @foreach ($grupos as $grupo)
        <div class="lista-item inline-flex flex-col gap-x-4 rounded-2xl bg-violet-50 px-4 py-2">
            <div class="inline-flex items-center justify-between gap-x-4">
                <p class="lista-titulo w-fit font-semibold capitalize text-violet-900">
                    {{ $grupo->nome }}
                </p>

                <form method="POST" action="{{ route('grupodelete', ['id' => $grupo->id]) }}" class="m-0 size-fit">
                    <input type="hidden" name="_method" value="DELETE" />
                    {{ csrf_field() }}
                    <div class="flex items-center gap-x-2">
                        <x-edit-button link="{{ route('grupoform', ['id' => $grupo->id]) }}"></x-edit-button>
                        <x-delete-button></x-delete-button>
                    </div>
                </form>
            </div>
        </div>
        @endforeach
    </div>

    {{ $grupos->links('includes.pagination') }}
</div>
@endsection

@section('scripts')
@vite(['resources/js/app.js'])
