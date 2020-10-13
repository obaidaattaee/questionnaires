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

        /*
         * تقوم بارجاع نموذج ادخال الاسئله للمستخدم
         */

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

        /*
         * تقوم بتسجيل الاجابات من المستخدم
         */
        $array_validation = [];
        $image_feild = '';
        foreach ($section->questions as $question){
            $array_validation = array_merge($array_validation ,[str_replace(' ' , '_' , $question->title) => $question->feialdType->type == 'image' ? 'required|image' : 'required']);

            if ($question->feialdType->type == 'image'){
                $image_feild =   str_replace(' ' , '_' , $question->title) ;
            }
        }


        if (! empty($image_feild)){
            $array_validation = array_merge($array_validation , [$image_feild."_file" => 'required']);
            unset($array_validation[$image_feild]);
            $imageName = asset('storage/images/').basename($request[$image_feild]->store("storage/images"));
            $request[$image_feild."_file"] = [ 'image'=> ['image' => "$imageName"]];
        }
        /*
         * هنا عملية التحقق من القيم و تخزين الصورة
         */
        $data = $request->validate($array_validation);
        $data_json = [] ;
        foreach ($section->questions as $question ){
            $data_json = array_merge($data_json , [$question->title => $data[str_replace(' ' , '_' , $question->feialdType->type == 'image' ? $question->title.'_file' : $question->title )]]);
        }
        $data_json = json_encode($data_json);
        QuestionAnswer::create([
            'section_id' => $section->id ,
            'value' => $data_json
        ]);
        /*
         * ارجاع صفحة الخاتمة بعد الاجابة على الاسئلة
         */
        return view('forms.conclusion')
            ->with('section' , $section);
    }
}
