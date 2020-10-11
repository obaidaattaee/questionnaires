<?php


namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\QuestionAnswer;
use App\Models\Section;
use Illuminate\Support\Facades\Request;


class QuestionnaireController extends Controller
{
    public function formShow($section_title)
    {
//        dd($section_title);
        $section = Section::where('title' , $section_title)
            ->where('closed_at' , null)
            ->first();

        if (is_null($section)){
            abort(404);
        }
        else{
            return view('forms.questionnaire-form')
                ->with('section' , $section);
        }
    }

    public function formStore(\Illuminate\Http\Request $request ,Section $section)
    {
        $array_validation = [];
        foreach ($section->questions as $question){
            $array_validation = array_merge($array_validation ,[str_replace(' ' , '_' , $question->title) => 'required']);
        }
//dd($request->all() , $array_validation);
        $data = $request->validate($array_validation);
        $data_json = [] ;
        foreach ($section->questions as $question ){
            $data_json = array_merge($data_json , [$question->title => $data[str_replace(' ' , '_' , $question->title)]]);
        }
        $data_json = json_encode($data_json);
        QuestionAnswer::create([
            'section_id' => $section->id ,
            'value' => $data_json
        ]);

        return view('forms.conclusion')
            ->with('section' , $section);
    }
}
