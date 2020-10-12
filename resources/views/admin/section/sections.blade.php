<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard.Sections') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg mb-3">
                <a href="{{ route('section.create') }}">
                    <button
                            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-5 mt-4 mx-4 float-left rounded-full">
                        {{ __('Dashboard.Create Sections') }}
                    </button>
                </a>
                @if(count($sections) > 0)
                    {{--                    {{ dd($sections) }}--}}
                    <div class="px-4 py-4">
                        <table class="w-full">
                            <thead>
                            <tr>
                                <th class="px-2 py-2">Title</th>
                                <th class="px-2 py-2">Create At</th>
                                <th class="px-2 py-2">Closed At</th>
                                <th class="px-2 py-2">Count</th>
                                <th class="px-2 py-2">Link</th>
                                <th class="px-2 text-right py-2">تعديل : حذف : عرض النتائج </th>
                            </tr>
                            </thead>
                            <tbody class="px-12">
                            @foreach($sections as $section)
                                <tr>
                                    <td class="border px-4 py-2">{{ $section->title }}</td>
                                    <td class="border px-4 py-2">{{ $section->created_at }}</td>
                                    <td class="border px-4 py-2">{{ $section->closed_at ?? "active" }}</td>
                                    <td class="border px-4 py-2">{{ count($section->questionAnswers)  }}</td>
                                    <td class="border text-blue-700 px-4 py-2"><a href="{{ route('questionnaire.show' , ['section' => $section->title]) }}" target="_blank">{{ route('questionnaire.show' , ['section' => $section->title]) }}</a></td>
                                    <td class="border px-3 py-2">
                                        <a href="{{ route('section.edit' , ['section' => $section->id]) }}">
                                            <button

                                                    class="hover:bg-green-700 text-white font-bold py-2 px-2 rounded-full">
                                                <img src="https://img.icons8.com/dusk/30/000000/change.png"/>
                                            </button>

                                        </a>
                                        <a href="{{ route('section.delete' , ['section' => $section->id]) }}">
                                            <button onclick='return confirm("Are you sure??")' type="submit"
                                                    class="hover:bg-red-700 text-white font-bold py-2 px-3 rounded-full">
                                                <img src="https://img.icons8.com/color/30/000000/delete-forever.png"/>
                                            </button>
                                        </a>
                                        <a href="{{ route('section.show' , ['section' => $section->id]) }}">
                                            <button
                                                    class="hover:bg-gray-700 text-white font-bold py-2 px-3 rounded-full">
                                                <img src="https://img.icons8.com/dusk/30/000000/survey.png"/>

                                            </button>
                                        </a>
{{--                                        <a href="{{ route('questionnaire.show' , ['section' => $section->title]) }}" target="_blank">--}}
{{--                                            <button--}}
{{--                                                    class="hover:bg-blue-700 text-white font-bold py-2 px-3 rounded-full">--}}
{{--                                                <img src="https://img.icons8.com/officel/30/000000/visible.png"/>                                          </button>--}}
{{--                                        </a>--}}
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                @else

                    <div class="bg-red-100 mx-5 my-5 border border-red-400 text-red-700 px-4 py-3 rounded " style="margin-top: 100px"
                         role="alert">
                        <strong class="font-bold">Opss !!</strong>
                        <span class="block sm:inline">we havent any section to show here , you can create new section</span>

                    </div>

                @endif
            </div>
        </div>
    </div>

</x-app-layout>
