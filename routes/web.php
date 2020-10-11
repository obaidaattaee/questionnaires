<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/dashboard', function () {

        return view('dashboard');
    })->name('dashboard');



    // routes for sections
    Route::namespace('App\Http\Controllers\Admin')->group(function () {
        Route::get('sections', 'SectionController@index')->name('sections');
        Route::get('sections/create', 'SectionController@create')->name('section.create');
        Route::post('sections/create', 'SectionController@store')->name('section.store');
        Route::get('sections/{section}/update', 'SectionController@edit')->name('section.edit');
        Route::get('sections/{section}', 'SectionController@show')->name('section.show');
        Route::post('sections/{section}/update', 'SectionController@update')->name('section.update');
        Route::get('sections/{section}/delete', 'SectionController@destroy')->name('section.delete');

    // end routres for section


    // routes for questiones
    Route::get('/section/{section}/question/create', 'QuestionController@create')->name('question.create');
    Route::post('/section/{section}/question/create', 'QuestionController@store')->name('question.store');
    Route::get('/section/{section}/question/{question}/update', 'QuestionController@edit')->name('question.edit');
    Route::post('/section/{section}/question/{question}/update', 'QuestionController@update')->name('question.update');
    Route::get('/section/{section}/question/{question}/delete', 'QuestionController@destroy')->name('question.delete');
    //end routes for questions


//        Route::get('/questionnaire/{section}', 'QuestionnaireController@formShow');
//        Route::post('/questionnaire/{section}', 'QuestionnaireController@formStore')->name('questionnaire.store');
});
});
Route::namespace('App\Http\Controllers\Admin')->group(function () {
    Route::get('/questionnaire/{section}', 'QuestionnaireController@formShow');
    Route::post('/questionnaire/{section}', 'QuestionnaireController@formStore')->name('questionnaire.store');
    Route::get('/file/{section}', 'ExcelFileController@storeExcel')->name('file.store');
    Route::get('/download/file/{section}', 'ExcelFileController@downloadFile')->name('file.download');
});
