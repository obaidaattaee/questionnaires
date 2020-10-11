<?php


namespace App;


use App\Models\Section;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class SectionExcel implements FromCollection , WithHeadings
{
    protected $section ;
    public function __construct(Section $section)
    {
        $this->section = $section ;
    }

    public function collection()
    {
        // TODO: Implement collection() method.
        $data = collect() ;
        foreach ($this->section->questionAnswers as $answer){
            $data->push(json_decode($answer->value));
        }
        return ($data);
    }

    public function headings(): array
    {
        // TODO: Implement headings() method.
        $columns = [] ;
        foreach ($this->section->questions as $question){
            $columns = array_merge($columns , [$question->title]) ;
        }
        return $columns ;
    }
}
