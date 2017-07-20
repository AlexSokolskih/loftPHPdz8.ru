<?php

/**
 * Created by PhpStorm.
 * User: Alex
 * Date: 16.07.2017
 * Time: 15:05
 */
use Illuminate\Database\Capsule\Manager as Capsule;


class DataBase
{
    function __construct() {
        $host = '127.0.0.1';
        $db = 'loftschool';
        $user = 'root';
        $pass = '';
        $charset = 'utf8';
        $dbdriver = 'mysql';


        $capsule = new Capsule;
        $capsule->addConnection([
            'driver' => $dbdriver,
            'host' => $host,
            'database' => $db,
            'username' => $user,
            'password' => $pass,
            'charset' => $charset,
            'collation' => 'utf8_unicode_ci',
            'prefix' => '',
        ]);
    // Setup the Eloquent ORM…
    $capsule->setAsGlobal();
    $capsule->bootEloquent();
    }

    public function getOrderList()
    {
       //$orderList= Order::all()->toArray();
        $orderList= Order::find(1)->category();
        return $orderList;
    }

}

class Order extends \Illuminate\Database\Eloquent\Model{
    public function category()
    {
        return $this->hasOne('Category','category', 'id');
    }
}

class Category extends \Illuminate\Database\Eloquent\Model{
}


