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
    function __construct()
    {
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
        $orderList = Order::with('category')->get()->toArray();
        // $orderList= Category::with('orders')->get()->toArray();
        return $orderList;
    }

    public function getOrder($orderId)
    {
        $order = Order::with('category')->find($orderId)->toArray();
        return $order;
    }

    public function newOrder($name, $category_id)
    {
        $order = new Order();
        $order->name = $name;
        $order->category_id = $category_id;
        $order->save();
        return $order->toArray();
    }

    public function updateOrder($order_id, $name, $category_id)
    {

        $order = Order::find($order_id);
        $order->name = $name;
        $order->category_id = $category_id;
        $order->save();
        return $order->toArray();
    }

    public function deleteOrder($order_id)
    {
        Order::destroy($order_id);
    }

}


class Category extends \Illuminate\Database\Eloquent\Model
{
    protected $table = 'Categorys';

    public function orders()
    {
        return $this->hasMany('Order');
    }
}


class Order extends \Illuminate\Database\Eloquent\Model
{
    public function category()
    {
        return $this->belongsTo('Category', 'category_id');
    }
}



