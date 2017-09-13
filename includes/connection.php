<?php

  $conn = new mysqli("localhost", "root", "", "livro");

  if($conn->connect_error){

    echo "<script>alert('erro ao conectar ao banco de dados');</script>";

  }

?>
