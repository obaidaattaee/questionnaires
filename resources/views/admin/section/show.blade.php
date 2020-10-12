<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Section')." : ".$section->title }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <a href="{{ route('sections') }}">
                    <button
                        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-5 mt-4 mx-4  rounded-full">
                        back to sections
                    </button>
                </a>

                <a href="{{ url('file/'.$section->id ) }}">
                    <button
                        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-5 mt-4 mx-4  rounded-full">
                           update excel file
                    </button>
                </a>
                <a href="{{ url('download/file/'.$section->title ) }}">
                    <button
                        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-5 mt-4 mx-4  rounded-full">
                           download excel file
                    </button>
                </a>
                @if(count($section->questionAnswers) > 0)
{{--                    {{ dd($sections) }}--}}
                    <div class="px-4 py-4">
                        <table class="w-full">
                            <thead >
                            <tr>
                            @foreach($section->questions as $value)


                                <th class="px-4">{{ $value->title }}</th>



                            @endforeach
                                <th class="px-4"> delete </th>
                            </tr>
                            </thead>
                            <tbody class="px-12">
{{--{{ dd($section->questionAnswers) }}--}}
                            @foreach($section->questionAnswers as  $answer)
                                <tr>

                                @foreach(json_decode($answer->value) as $key => $value)
                                @if(is_object($value))
                                            <td class="border px-12 py-2"><img src="{{$value->image->image}}"> </td>
                                        @else
                                            <td class="border px-12 py-2">
                                    {{ $value }}
                                            </td>
                                    @endif

                                @endforeach
                                    <td class="border px-12 py-2">
                                        <a href="{{ route('questionanswer.delete' , ['answer' => $answer->id ]) }}" >
                                            <button onclick='return confirm("Are you sure??")' type="submit"
                                                    class="hover:bg-red-700 text-white font-bold py-2 px-2 rounded-full">
                                                <img src="https://img.icons8.com/color/30/000000/delete-forever.png"/>
                                            </button>
                                        </a></td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                @else

                        <div class="bg-red-100 mx-5 my-5 border border-red-400 text-red-700 px-4 py-3 rounded relative"
                             role="alert">
                            <strong class="font-bold">Opss !!</strong>
                            <span class="block sm:inline">we havent any section to show here , you can create new section</span>
                        </div>

                @endif
            </div>
        </div>
    </div>
</x-app-layout>
