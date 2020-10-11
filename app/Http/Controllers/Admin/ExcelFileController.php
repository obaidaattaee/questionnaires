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
        \Maatwebsite\Excel\Facades\Excel::store(new SectionExcel($section) , "public/sections/$section->title.xlsx");
        session()->flash('msg' , 's: file updated successfully');
        return redirect(route('section.show' , ['section' => $section->id]));
    }

    public function downloadFile($section_file_name)
    {
        try {
            return response()->download("storage/sections/$section_file_name.xlsx");
            return "thank you " ;
        }
        catch (\Exception $e){
            abort(404);
        }
        }
}
