<?
require_once 'connection.php';

if (isset($_POST['value'])) {
    $value = $_POST['value'];     // value элемента которого надо изменить 
if (isset($_POST['id'])) {
        $id = $_POST['id'];     // id элемента 

   $sql = mysqli_query($link, "UPDATE `products` SET `PRODUCT_QUANTITY` = '$value' WHERE `id`= $id");

 include 'index.php';
    }
}

?>