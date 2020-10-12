<?php


namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\QuestionAnswer;
use App\Models\Section;
use Carbon\Carbon;
use Illuminate\Http\Request;

class SectionController extends Controller
{
    public function index()
    {
        /*
         * ارجاع صفحة  عرض  الاقسام
         */
        $sections = Section::get();
        return view('admin.section.sections')
            ->with('sections' , $sections);
    }
    public function create()
    {
        /*
         * ارجاع صفحة انشاء قسم جديد
         */
        return view('admin.section.create');
    }

    public function store(Request $request)
    {
        /*
         * تخزين قسم جديد
         */
        $section = $request->validate([
            'title' => ['required']
        ]);

        Section::create($section);

        session()->flash('msg' , 's: section created successfully');
        return redirect(route('sections'));
    }
    public function edit(Section $section)
    {
        /*
         *  ارجاع صفحة تعديل قسم
         */
        return view('admin.section.edit')
            ->with("section" , $section);
    }

    public function update(Section $section ,Request $request)
    {
        /*
         * تحديث بيانات القسم
         */
        $data = $request->validate([
            'title' => ['required']
        ]);
        $section->update($data);
        session()->flash('msg' , 's: section updated successfully');
        return redirect(route('sections'));
    }

    public function destroy(Section $section)
    {
        /*
         * حذف قسم
         */
        $section->delete();
        session()->flash('msg' , 's: section deleted successfully ');
        return redirect(route('sections'));
    }

    public function show(Section $section)
    {
        /*
         * عرض قسم بكل اسئلته
         */
        return view('admin.section.show')
            ->with('section' , $section) ;
    }

    public function status(Section $section)
    {
        /*
         * تغيير حالة القسم
         */
        $section->closed_at = $section->closed_at == null ? date('Y-m-d H:i:s') : null ;

        $section->save();
        return redirect(route('section.edit' , ['section' => $section->id]));
    }

    public function deleteAnswer(QuestionAnswer $answer)
    {
        /*
         * حذف اجابة
         */
        $answer->delete();

        session()->flash('msg' , 's: answer deleted successfully');
        return redirect(route('section.show' , ['section' => $answer->section_id]));
    }
}
