<?php

/**
 * Created by PhpStorm.
 * User: Alex
 * Date: 15.07.2017
 * Time: 21:59
 */
class Controller_main
{
    public function start()
    {

        $loader = new Twig_Loader_Filesystem('themes/Bell');
        $twig = new Twig_Environment($loader);
        $database = new DataBase();
        $orders = $database->getOrderList();
       echo $twig->render('index.twig',array('orders'=>$orders));


    }

}