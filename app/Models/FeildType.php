<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class FeildType extends Model
{
    protected $table = 'feild_type';
    protected $fillable = [
        'type'
    ] ;

    public function questions()
    {
        return $this->hasMany(Question::class);
    }
}
