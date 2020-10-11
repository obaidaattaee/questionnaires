<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit Section')." : ".$section->title }}
        </h2>
    </x-slot>

    <div class="pt-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <a href="{{ route('sections') }}">
                    <button
                        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-5 mt-4 mx-4  rounded-full">
                        back to sections
                    </button>
                </a>

                    <form class="py-12 mr-1/4" action="{{ route('section.update' , ['section' => $section->id]) }}" method="POST">
                        @method('POST')
                        @csrf
                        <div class="md:flex md:items-center mb-6">
                            <div class="md:w-1/3">
                                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4"
                                       for="inline-full-name">
                                    Section Title
                                </label>
                            </div>
                            <div class="md:w-2/3">
                                <input
                                    class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500"
                                    id="inline-full-name" type="text" placeholder="section title" name="title" value="{{ old('title')?? $section->title }}">
                            </div>
                        </div>
{{--                        <div class="md:flex md:items-center mb-6">--}}
{{--                            <div class="md:w-1/3"></div>--}}
{{--                            <label class="md:w-2/3 block text-gray-500 font-bold">--}}
{{--                                <input class="mr-2 leading-tight" type="checkbox">--}}
{{--                                <span class="text-sm">Send me your newsletter!</span>--}}
{{--                            </label>--}}
{{--                        </div>--}}
                        <div class="md:flex md:items-center">
                            <div class="md:w-1/3"></div>
                            <div class="md:w-2/3">
                                <button
                                    class="shadow bg-purple-500 hover:bg-purple-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded"
                                    type="submit">
                                    save
                                </button>
                            </div>
                        </div>
                    </form>

            </div>
        </div>
    </div>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <a href="{{ route('question.create' , ['section' => $section->id]) }}">
                    <button
                        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-5 mt-4 mx-4  rounded-full">
                        create new question
                    </button>
                </a>

                @if(count($section->questions) > 0)
                    {{--                    {{ dd($sections) }}--}}
                    <div class="px-4 py-4">
                        <table class="w-full">
                            <thead >
                            <tr>
                                <th class="w-1/3 px-4 text-left py-2">Title</th>
                                <th class="w-1/4 px-4 text-left py-2">Create At</th>
                                <th class="w-1/4 px-4 text-left py-2">Feild Type</th>

                                <th class="w-1/6 px-4 text-left py-2">edit / delete</th>
                            </tr>
                            </thead>
                            <tbody class="px-12">
                            @foreach($section->questions as $question)
                                <tr>
                                    <td class="border px-12 py-2">{{ $question->title }}</td>
                                    <td class="border px-12 py-2">{{ $question->created_at }}</td>
                                    <td class="border px-12 py-2">{{ $question->feialdType->type }}</td>

                                    <td class="border px-3 py-2">
                                        <a href="{{ route('question.edit' , ['section' => $section->id , 'question' => $question->id ]) }}">
                                            <button
                                                class="bg-green-400 hover:bg-green-700 text-white font-bold py-2  px-4 rounded-full">
                                                edit
                                            </button>
                                        </a>
                                        <a href="{{ route('question.delete' , ['section' => $section->id , 'question' => $question->id ]) }}">
                                            <button
                                                class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded-full">
                                                delete
                                            </button>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                @else

                    <div class="bg-red-100 mx-5 my-5 border border-red-400 text-red-700 px-4 py-3 rounded relative"
                         role="alert">
                        <strong class="font-bold">Opss !!</strong>
                        <span class="block sm:inline">we havent any section to show here , you can create new question</span>
                        <span class="absolute top-0 bottom-0 right-0 px-4 py-3">
    <svg class="fill-current h-6 w-6 text-red-500" role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>Close</title><path
            d="M14.348 14.849a1.2 1.2 0 0 1-1.697 0L10 11.819l-2.651 3.029a1.2 1.2 0 1 1-1.697-1.697l2.758-3.15-2.759-3.152a1.2 1.2 0 1 1 1.697-1.697L10 8.183l2.651-3.031a1.2 1.2 0 1 1 1.697 1.697l-2.758 3.152 2.758 3.15a1.2 1.2 0 0 1 0 1.698z"/></svg>
  </span>
                    </div>

                @endif

            </div>
        </div>
    </div>
</x-app-layout>
