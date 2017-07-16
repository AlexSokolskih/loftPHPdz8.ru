<?php

/**
 * Created by PhpStorm.
 * User: Alex
 * Date: 13.07.2017
 * Time: 20:51
 */
class Router
{
    public $urlParts;
    public function __construct()
    {
     $url= $_SERVER['REQUEST_URI'];
     $this->urlParts=explode('/',$url);
     $this->run();

    }

    public function run()
    {
        if($this->urlParts[1] == ''){
           $controller = new Controller_main();
           $controller->start();

        }

        
    }

}

