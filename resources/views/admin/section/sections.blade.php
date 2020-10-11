<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Sections') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <a href="{{ route('section.create') }}">
                    <button
                        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-5 mt-4 mx-4  rounded-full">
                        craete new section
                    </button>
                </a>
                @if(count($sections) > 0)
{{--                    {{ dd($sections) }}--}}
                    <div class="px-4 py-4">
                        <table class="w-full">
                            <thead >
                            <tr>
                                <th class="px-4 text-left py-2">Title</th>
                                <th class="px-4 text-left py-2">Create At</th>
                                <th class="px-4 text-left py-2">Closed At</th>
                                <th class="px-4 text-left py-2">Count</th>
                                <th class="px-4 text-left py-2">edit / delete / show</th>
                            </tr>
                            </thead>
                            <tbody class="px-12">
                            @foreach($sections as $section)
                            <tr>
                                <td class="border px-12 py-2">{{ $section->title }}</td>
                                <td class="border px-12 py-2">{{ $section->created_at }}</td>
                                <td class="border px-12 py-2">{{ $section->closed_at ?? "active" }}</td>
                                <td class="border px-12 py-2">{{ count($section->questionAnswers)  }}</td>
                                <td class="border px-3 py-2">
                                    <a href="{{ route('section.edit' , ['section' => $section->id]) }}">
                                        <button

                                            class="hover:bg-green-700 text-white font-bold py-2 px-2 rounded-full">
                                            <img src="https://img.icons8.com/dusk/30/000000/change.png"/>
                                        </button>

                                    </a>
                                    <a href="{{ route('section.delete' , ['section' => $section->id]) }}" >
                                        <button onclick='return confirm("Are you sure??")' type="submit"
                                            class="hover:bg-red-700 text-white font-bold py-2 px-2 rounded-full">
                                            <img src="https://img.icons8.com/color/30/000000/delete-forever.png"/>
                                        </button>
                                    </a>
                                    <a href="{{ route('section.show' , ['section' => $section->id]) }}">
                                        <button
                                            class="hover:bg-blue-700 text-white font-bold py-2 px-2 rounded-full">
                                            <img src="https://img.icons8.com/officel/30/000000/visible.png"/>
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
                            <span class="block sm:inline">we havent any section to show here , you can create new section</span>
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
