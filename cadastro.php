<?php
  $titulo= "Cadastro de Administrador";
  require 'includes/header.php';
?>

<?php
 session_start();
 if(!isset($_SESSION["email"]) || !isset($_SESSION["senha"])) {
   header("Location: login.php");
   exit;
 }
 ?>


  <div class="container"><br><br><br>
  <h2>Cadastrar Administrador</h2><br>
  <div class="row">
  <form class="col s12" method="POST" enctype="multipart/form-data" action="cadastrando.php">
    <div class="row">
      <div class="input-field col s6">
        <i class="material-icons prefix">account_circle</i>
        <input type="text" id="icon_prefix" type="text" class="validate" name="nome">
        <label for="icon_prefix">Nome</label>
      </div>
      </div>


    <div class="row">
      <div class="input-field col s6">
        <i class="material-icons prefix">email</i>
        <input type="email" id="icon_prefix" type="text" class="validate" name="email">
        <label for="icon_prefix">Email</label>
      </div>

      <div class="input-field col s6">
        <i class="material-icons prefix">https</i>
        <input name="senha" id="icon_prefix" type="password" class="validate" data-length="10">
        <label for="icon_prefix">Senha</label>
      </div>
    </div><br>

    <div class="row">
      <div class="col s12">
        <input class="btn waves-effect waves-light" type="submit" value="Cadastrar Administrador" />
      </div>
    </div>
  </form>
</div>
</div><br>

<?php
  require 'includes/footer.php';
 ?>
