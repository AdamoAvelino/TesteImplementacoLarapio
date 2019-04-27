<?php  ?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="/view/assets/css/style.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
    integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

  <title></title>
</head>
<body>
<?php

//include "Db.php";
//$bd = new Db();
//
//$bd->insert('produtos', ['contador' => 5, 'decricao' => 'teste insert', 'nome' => 'produto']);
//var_dump($bd);
//header('Content-Type: charset=utf-8');
$conexao = new PDO('mysql:host=localhost;port=3306;dbname=laribolo', 'root', '@avelino82');
header('Content-type: charset=utf-8');
$resource = $conexao->query('SELECT * FROM compra');
var_dump($resource, $conexao);
var_dump($resource->fetch());
?>
</body>
</html>
