<?php

require __DIR__."/../vendor/autoload.php";

use Source\Models\User;

$user = new User();
$list = $user->find()->fetch(true);
/** @var $userItem User */
foreach ($list as $userItem){
    var_dump($userItem->user_name);
    var_dump($userItem->addresses());
}



