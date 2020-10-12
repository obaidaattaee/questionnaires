<?php


namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\FeildType;
use App\Models\Question;
use App\Models\Section;
use Illuminate\Http\Request;

class QuestionController extends Controller
{

    public function create(Section $section)
    {
        /*
         *
         *  تقوم بفتح صفحة تسجيل سؤال جديد
         */
        $feild_types = FeildType::get();
        return view('admin.question.create')
            ->with('section' , $section)
            ->with('feild_types' , $feild_types);
    }

    public function store(Section $section ,Request $request)
    {
        /*
         *
         * تقوم بحفظ السؤال الجديد
         */
        $request['section_id'] = $request['section_id'] ?? $section->id ;
        $data = $request->validate([
            'title' => ['required'],
            'section_id' => ['required'],
            'feild_type_id' => ['required'],
        ]);

        Question::create($data);

        session()->flash('msg' , 's: Question created successfully');
        return redirect(route('section.edit' , ['section' => $section->id]))
            ->with('section' , $section);
    }
    public function edit(Section $section , Question $question)
    {
        /*
         *
         *  تقوم بفتح صفحة التعديل على السؤال
         */
        $feild_types = FeildType::get();
        return view('admin.question.edit')
            ->with("section" , $section)
            ->with('question' , $question)
            ->with('feild_types' , $feild_types);
    }

    public function update(Section $section ,  Question $question ,Request $request)
    {
        /*
         * تقوم بتحديث السؤال
         */
        $request['section_id'] = $request['section_id'] ?? $section->id ;
        $data = $request->validate([
            'title' => ['required'] ,
            'section_id' => ['required'] ,
            'feild_type_id' => ['required'] ,
        ]);
        $question->update($data);
        session()->flash('msg' , 's: Question updated successfully');
        return redirect(route('section.edit' , ['section' => $section->id]))
            ->with('section' , $section);
    }

    public function destroy(Section $section , Question $question)
    {
        /*
         * تقوم بحذف السؤال
         */
        $question->delete();
        session()->flash('msg' , 's: Question deleted successfully ');
        return redirect(route('section.edit' , ['section' => $section->id]))
            ->with('section' , $section);
    }
}
