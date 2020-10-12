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
        $sections = Section::get();
        return view('admin.section.sections')
            ->with('sections' , $sections);
    }
    public function create()
    {
        return view('admin.section.create');
    }

    public function store(Request $request)
    {
        $section = $request->validate([
            'title' => ['required']
        ]);

        Section::create($section);

        session()->flash('msg' , 's: section created successfully');
        return redirect(route('sections'));
    }
    public function edit(Section $section)
    {
        return view('admin.section.edit')
            ->with("section" , $section);
    }

    public function update(Section $section ,Request $request)
    {
        $data = $request->validate([
            'title' => ['required']
        ]);
        $section->update($data);
        session()->flash('msg' , 's: section updated successfully');
        return redirect(route('sections'));
    }

    public function destroy(Section $section)
    {
        $section->delete();
        session()->flash('msg' , 's: section deleted successfully ');
        return redirect(route('sections'));
    }

    public function show(Section $section)
    {
        return view('admin.section.show')
            ->with('section' , $section) ;
    }

    public function status(Section $section)
    {
        $section->closed_at = $section->closed_at == null ? date('Y-m-d H:i:s') : null ;
//dd($section->closed_at);
        $section->save();
        return redirect(route('section.edit' , ['section' => $section->id]));
    }

    public function deleteAnswer(QuestionAnswer $answer)
    {
        $answer->delete();
//        dd($answer);
        session()->flash('msg' , 's: answer deleted successfully');
        return redirect(route('section.show' , ['section' => $answer->section_id]))
//            ->with('section' , Section::find($answer->section_id));
        ;
    }
}
