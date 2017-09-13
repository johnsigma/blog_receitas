<?php
  require 'includes/connection.php';

  $id_admin = 0;

if($_SERVER['REQUEST_METHOD'] == 'POST'){

  $nome = $_POST['nome'];
  $email = $_POST['email'];
  $senha = $_POST['senha'];

  $stmt = $conn->prepare("INSERT INTO admin (nome, email, senha) values(?,?,?)");
  $stmt->bind_param('sss', $nome, $email, $senha);
  $stmt->execute();
  $id_admin = $stmt->insert_id;

  echo '<script>alert("Administrador cadastrado com sucesso")</script>';

}

header("Location: index_admin.php");
?>
