<?php
 session_start();
 if(!isset($_SESSION["email"]) || !isset($_SESSION["senha"])) {
   header("Location: login.php");
   exit;
 }
 ?>

<?php

  if(isset($_GET['id_receita'])){

    $id_receita = $_GET['id_receita'];

    require 'includes/connection.php';

    if($conn->connect_error) {
      echo "Erro: $conn->connect_error";
    }

    $sql = "DELETE FROM receitas WHERE id_receita='$id_receita'";

    if($conn->query($sql)) {
      echo '<script>alert("Excluído com sucesso")</script>';
    } else {
      echo '<script>alert("Erro ao excluir!")</script>';
    }

    header("Location: index_admin.php");

  } else {
    header("Location: index_admin.php");
  }


?>
