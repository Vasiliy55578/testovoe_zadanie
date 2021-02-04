<?

//  На PHP написать функцию которая возвращает массив товаров из таблицы "Products".
//  Функция должна содержать, как минимум, 1 параметр, который отвечает за ограничение количества выводимых товаров.

include 'connection.php';

$i = 5; // ограничение вывода товаров
$mass = [];   // массив элементов
$col = 0; // количество строк записей
$id = [];
list ($mass, $col, $id) = return_table($i, $link);	// вызов

 function return_table($i, $link){
    
 $result = mysqli_query($link, " SELECT *, STR_TO_DATE( DATE_CREATE, '%d.%m.%Y') AS `tmp_date` FROM `products` WHERE `HIDE_PRODUCT` != '+' ORDER BY `tmp_date` DESC
 LIMIT 0, $i ");

  $col = mysqli_num_rows($result); // кол-во записей

 while( $row = mysqli_fetch_assoc($result) ){ 

   $id[] = $row['ID']; // получаем id  
    foreach ($row as $value) { 
      if( $row['HIDE_PRODUCT'] != $value) {  
        if( $row['PRODUCT_QUANTITY'] != $value) { 
 $mass[] = $value;
          }
          else {
            // редактируемое количество товаров
        $mass[] = "<button type='button' onclick='stepDown($value, $row[ID])'> - </button>" . $value . 
        "<button type='button' onclick='stepUp($value, $row[ID])'> + </button>"; 
          }
        }
      }
   
 }

 return array ($mass, $col, $id);
 }


?>