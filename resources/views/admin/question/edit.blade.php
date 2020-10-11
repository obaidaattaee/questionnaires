<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit question') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <a href="{{ route('section.edit' , ['section' => $section->id]) }}">
                    <button
                        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-5 mt-4 mx-4  rounded-full">
                        back to sections
                    </button>
                </a>

                <form class="py-12 mr-1/4" action="{{ route('question.update' , ['section' => $section->id , 'question' => $question->id]) }}" method="POST">
                    @method('POST')
                    @csrf
                    <div class="md:flex md:items-center mb-6">
                        <div class="md:w-1/3">
                            <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4"
                                   for="inline-full-name">
                                Question Title
                            </label>
                        </div>
                        <div class="md:w-2/3">
                            <input
                                class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500"
                                id="inline-full-name" type="text" placeholder="question title" name="title" value="{{ old('title')?? $question->title }}">
                        </div>
                        <div class="md:w-1/3">
                            <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4"
                                   for="inline-full-name">
                                feild type
                            </label>
                        </div>
                        <div class="md:w-2/3">
                            <select name="feild_type_id" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500">
                                @foreach($feild_types as $type)
                                    <option value="{{ $type->id }}">{{ $type->type }}</option>
                                @endforeach
                            </select>

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
</x-app-layout>
