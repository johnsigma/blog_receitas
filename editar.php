<?php
 session_start();
 if(!isset($_SESSION["email"]) || !isset($_SESSION["senha"])) {
   header("Location: login.php");
   exit;
 }
 ?>

<?php

  if(isset($_POST['id_receita'])){

    $id_receita = isset($_POST['id_receita'])? $_POST['id_receita'] : null;
    $photo_profile = isset($_POST['photo_profile'])? $_POST['photo_profile'] : null;
    $nome_receita = isset($_POST['nome_receita'])? $_POST['nome_receita'] : null;
    $ingredientes = isset($_POST['ingredientes'])? $_POST['ingredientes'] : null;
    $preparo = isset($_POST['preparo'])? $_POST['preparo'] : null;
    $tempo_preparo = isset($_POST['tempo_preparo'])? $_POST['tempo_preparo'] : null;
    $porcoes = isset($_POST['porcoes'])? $_POST['porcoes'] : null;
    $categoria = isset($_POST['categoria'])? $_POST['categoria'] : null;

    require 'includes/connection.php';

    if($conn->connect_error){
      echo "Erro ao conectar ao banco: ".$conn->connect_error;
    }

    $stmt = $conn->prepare("UPDATE receitas SET img_receita = ?,
      nome_receita = ?, ingredientes = ?, preparo = ?, tempo_preparo = ?, porcoes = ? WHERE id_receita = ?");
    $stmt->bind_param("ssssiii", $img_receita, $nome_receita, $ingredientes, $preparo, $tempo_preparo, $porcoes, $id_receita);

    $imagem = $_FILES['photo_profile'];

  if($imagem['error']){
    echo 'Erro';
    die();
  }

  $dirImagens = 'lib/imagens';

  if(!is_dir($dirImagens)){
    mkdir($dirImagens);
  }

  $new_path = $dirImagens . DIRECTORY_SEPARATOR . $id_receita.".jpg";

  if(move_uploaded_file($imagem['tmp_name'], $new_path)){
    $img_receita = $id_receita.".jpg";
    $conn->query("UPDATE receitas SET img_receita = '$img_receita' WHERE id_receita = '$id_receita' ");
  } else {
    echo 'Erro no update';
  }

    if($stmt->execute() == true){
      echo '<script>alert("Editado com sucesso")</script>';
    } else {
      echo '<script>alert("Erro ao editar")</script>';
    }

    header("Location: index_admin.php");
    $conn->close();

  } else {
    header("Location: index_admin.php");
  }

?>
