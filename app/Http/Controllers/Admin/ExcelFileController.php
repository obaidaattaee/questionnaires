<?php


namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\Section;
use App\SectionExcel;
use Maatwebsite\Excel\Excel;
use ZipStream\File;

class ExcelFileController extends Controller
{
    public function storeExcel(Section $section)
    {
        /*
         *
         *  هذه الدالة ستقوم بتخزين ملف الاكسل في  ثم اعادة المستخدم الى صفحة النتائج
         */
        \Maatwebsite\Excel\Facades\Excel::store(new SectionExcel($section) , "public/sections/$section->title.xlsx");
        session()->flash('msg' , 's: file updated successfully');
        return redirect(route('section.show' , ['section' => $section->id]));
    }

    public function downloadFile($section_file_name)
    {
        /*
         *  هذه الدالة ستقوم بتنزيل ملف الاكسل ثم ارجاعه الى صفحة النتائج
         */
        try {
            return response()->download("storage/sections/$section_file_name.xlsx");
            return "thank you " ;
        }
        catch (\Exception $e){
            abort(404);
        }
        }
}
