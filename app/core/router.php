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

        $url = $_SERVER['REQUEST_URI'];
        $this->urlParts = explode('/', $url);
        $this->run();

    }

    public function run()
    {
        if ($this->urlParts[1] == '') {
            $controller = new Controller_main();
            $controller->start();
        } elseif ($this->urlParts[1] == 'api') {
            if ($this->urlParts[2] == 'v1') {
                if ($this->urlParts[3] == 'orders') {
                    $controllerOrders = new ControllerOrders();
                    if ($_SERVER["REQUEST_METHOD"] == 'GET') {
                        if ($this->urlParts[4] == '') {
                            $jsonOrders = $controllerOrders->ordersListInJSON();
                            echo $jsonOrders;
                        } else {
                            $orderId = intval($this->urlParts[4]);
                            $jsonOrder = $controllerOrders->orderItemInJSON($orderId);
                            echo $jsonOrder;
                        }
                    } elseif ($_SERVER["REQUEST_METHOD"] == 'POST') {
                        $nameOrder = $_POST["name"];
                        $category_id = $_POST["category_id"];
                        $newOrder = $controllerOrders->newOrder($nameOrder, $category_id);
                        echo $newOrder;
                    } elseif ($_SERVER["REQUEST_METHOD"] == 'PUT') {
                        if ($this->urlParts[4] == '') {
                        } else {
                            $orderId = intval($this->urlParts[4]);
                            $orderName = $_GET["name"];
                            $category_id = $_GET["category_id"];
                            $jsonOrder=$controllerOrders->updateOrder($orderId, $orderName, $category_id);
                            echo $jsonOrder;
                        }
                    } elseif ($_SERVER["REQUEST_METHOD"] == 'DELETE') {
                        if ($this->urlParts[4] == '') {
                        } else {
                            $orderId = intval($this->urlParts[4]);
                            $controllerOrders->deleteOrder($orderId);
                        }
                    }
                }
            }
        }

    }

}

