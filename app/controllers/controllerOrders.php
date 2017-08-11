<?php
/**
 * Created by PhpStorm.
 * User: sokolskih
 * Date: 09.08.2017
 * Time: 16:25
 */

class ControllerOrders
{
    public function ordersList()
    {
        $database = new DataBase();
        $orders = $database->getOrderList();
        return $orders;
    }

    public function orderItem($orderId)
    {
        $database = new DataBase();
        $orders = $database->getOrder($orderId);
        return $orders;
    }

    public function ordersListInJSON()
    {
        $orders = $this->ordersList();
        $ordersJson = json_encode($orders);
        return $ordersJson;
    }

    public function orderItemInJSON($orderID)
    {
        $order = $this->orderItem($orderID);
        $orderJson = json_encode($order);
        return $orderJson;
    }

    public function newOrder($name, $category_id)
    {
        $database = new DataBase();
        $newOrder = $database->newOrder($name, $category_id);
        $newOrderJson = json_encode($newOrder);
        return $newOrderJson;
    }

    public function updateOrder($order_id, $name, $category_id)
    {
        $database = new DataBase();
        $updateOrder = $database->updateOrder($order_id, $name, $category_id);
        $updateOrderJson = json_encode($updateOrder);
        return $updateOrderJson;
    }

    public function deleteOrder($order_id)
    {
        $database = new DataBase();
        $deleteOrder = $database->deleteOrder($order_id);
        $deleteOrderJson = json_encode($deleteOrder);
        return $deleteOrderJson;
    }


}