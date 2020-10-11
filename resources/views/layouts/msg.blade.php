<?php
$msg = \Session::get("msg");
$msgClass = 'bg-green-400';
$msgBGClass = 'bg-green-200' ;
$msgBClass = 'boarder-green-500' ;
?>
@if($msg)
    <?php
    //اول حرفين من الرسالة وتحويلهم الى حروف صغيرة
    $first2Letters = strtolower(substr($msg, 0, 2));
    if ($first2Letters == 's:') {
        $msgClass = 'text-green-700';
        $msgBGClass = 'bg-green-200';
        $msgBClass = 'boarder-green-1000' ;
        $msg = substr($msg, 2);//قص اول حرفين
    } else if ($first2Letters == 'w:') {
        $msgClass = 'text-red-300';
        $msgBGClass = 'bg-red-100';
        $msgBClass = 'boarder-green-500' ;
        $msg = substr($msg, 2);//قص اول حرفين
    } else if ($first2Letters == 'i:') {
        $msgClass = 'text-green-400';
        $msgBGClass = 'bg-green-200';
        $msgBClass = 'boarder-green-500' ;
        $msg = substr($msg, 2);//قص اول حرفين
    } else if ($first2Letters == 'e:') {
        $msgClass = 'text-red-700';
        $msgBGClass = 'bg-red-200';
        $msgBClass = 'boarder-green-700' ;
        $msg = substr($msg, 2);//قص اول حرفين
    }
    ?>

    <div class="{{ $msgBGClass }} mx-5 border {{ $msgBClass }} {{$msgClass }} px-4 py-3 rounded relative"
         role="alert">

        <span class="block sm:inline">{{$msg}}</span>
        <span class="absolute top-0 bottom-0 right-0 px-4 py-3">
    <svg class="fill-current h-6 w-6 text-red-500" role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>Close</title><path
            d="M14.348 14.849a1.2 1.2 0 0 1-1.697 0L10 11.819l-2.651 3.029a1.2 1.2 0 1 1-1.697-1.697l2.758-3.15-2.759-3.152a1.2 1.2 0 1 1 1.697-1.697L10 8.183l2.651-3.031a1.2 1.2 0 1 1 1.697 1.697l-2.758 3.152 2.758 3.15a1.2 1.2 0 0 1 0 1.698z"/></svg>
  </span>
    </div>

@endif

@if ($errors->any())
    <div class="alert alert-danger  alert-dismissible show" role="alert">
        <ul>
            @foreach ($errors->all() as $error)
                <li>
                    <div class="hover:hidden bg-red-700 mx-5 border boarder-red-400 text-red-100 px-4 py-3 rounded relative "
                         role="alert">

                        <span class="block sm:inline">{{ $error }}</span>
                        <span class="absolute top-0 bottom-0 right-0 px-4 py-3 active:hidden">
    <svg class="fill-current h-6 w-6 text-red-500" role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>Close</title><path
            d="M14.348 14.849a1.2 1.2 0 0 1-1.697 0L10 11.819l-2.651 3.029a1.2 1.2 0 1 1-1.697-1.697l2.758-3.15-2.759-3.152a1.2 1.2 0 1 1 1.697-1.697L10 8.183l2.651-3.031a1.2 1.2 0 1 1 1.697 1.697l-2.758 3.152 2.758 3.15a1.2 1.2 0 0 1 0 1.698z"/></svg>
  </span>
                    </div>
                    </li>
            @endforeach
        </ul>

    </div>
@endif
