<?php

return [
    'class'        => 'yii\db\Connection',
    'dsn'          => 'mysql:host=localhost;dbname=gateway',
    'username'     => 'root',
    'password'     => 'foR1980',
    'charset'      => 'utf8',
    'on afterOpen' => function ($event) {
        $event->sender->createCommand('SET NAMES utf8mb4')->execute();
    }
];
