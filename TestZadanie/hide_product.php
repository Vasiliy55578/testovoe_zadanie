<?
require_once 'connection.php';

if (isset($_POST['id'])) {
    $id = $_POST['id'];     // id элемента которого надо скрыть 
    $sql = mysqli_query($link, "UPDATE `products` SET `HIDE_PRODUCT` = '+' WHERE `id`= $id");

include 'index.php';
}

?>