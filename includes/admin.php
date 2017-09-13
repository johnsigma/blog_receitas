<?php
   session_start();
   if(!isset($_SESSION["email"]) || !isset($_SESSION["senha"])) {
     header("Location: login.php");
     exit;
   }
 ?>

<?php
 require_once 'includes/header_admin.php';
?>

<div class="fixed-action-btn botao">
    <a href="includes/logout.php" class="btn-floating waves-effect waves-light btn left">Sair</a>
    </a>
</div>

<div class="fixed-action-btn click-to-toggle">
    <a class="btn-floating btn-large red">
      <i class="large material-icons">mode_edit</i>
    </a>
    <ul>
      <div class="row cartao col s12 m4">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <div class="row">
                <form class="col s12" method="POST" enctype="multipart/form-data" action="cadastrando.php">

              <div class="input-field s2">

                  <i class="material-icons prefix">account_circle</i>
                  <input type="text" id="icon_prefix" type="text" class="validate" name="nome">
                  <label for="icon_prefix">Nome</label>

              </div>

              <div class="input-field s2">

                  <i class="material-icons prefix">email</i>
                  <input type="email" id="icon_prefix" type="text" class="validate" name="email">
                  <label for="icon_prefix">Email</label>

              </div>

              <div class="input-field">

                  <i class="material-icons prefix">https</i>
                  <input name="senha" id="icon_prefix" type="password" class="validate" data-length="10">
                  <label for="icon_prefix">Senha</label>
              </div>

                  <center><input class="btn waves-effect waves-light botao2" type="submit" value="Cadastrar novo Administrador" /></center>
                </form>
              </div>
            </div>
        </div>
      </div>
    </ul>
  </div>
