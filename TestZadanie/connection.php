<?


$link = mysqli_connect( 
    'localhost',  /* Хост, к которому мы подключаемся */ 
    'root',       /* Имя пользователя */ 
    'root',   /* Используемый пароль */ 
    'bd_products');     /* База данных для запросов по умолчанию */ 
  
  if (!$link) { 
  echo "Ошибка подключения к базе данных. Код ошибки: ".mysqli_connect_error(); 
  exit; 
  } 




?>