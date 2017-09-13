<?php
  $titulo= "CookBook - Bolos e Tortas";
  require_once 'includes/header.php';
 ?>

<div class="parallax-container">
  <div class="parallax"><img src="lib/imagens/bolos.jpg"></div>
  <div class="icono"><img src="lib/imagens/icono.png"></div>
  <h6>Bolos e Tortas</h6>
</div>

<div class="fixed-action-btn click-to-toggle">
    <a class="btn-floating btn-large red">
      <i class="large material-icons">mode_edit</i>
    </a>
    <ul>
      <div class="row cartao col s12 m4">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
            <form name="loginform" method="post" action="logando.php">
              <input id="email" type="email" class="validate" name="email">
              <label for="email">Email</label>

              <input id="input_password" type="password" data-length="10" name="senha">
              <label for="input_password">Senha</label>

              <center><input class="btn waves-effect waves-light" type="submit" value="Entrar" /></center>
            </form>
            </div>
          </div>
      </div>
    </ul>
  </div>

<div class="row">

<?php
  require 'includes/connection.php';

  if($conn->connect_error){
          echo 'Erro: '.$conn->connect_error;
  }

  $sql = "SELECT * FROM receitas WHERE categoria = 'Bolos e Tortas' ORDER BY id_receita DESC";

  $result = $conn->query($sql);

  while ($row = $result->fetch_assoc()){
    echo "<div class 'row'>";
    echo "<div class='parallax-container'>";
    echo "<center><h1>".$row['nome_receita']."</h1></center>";
    echo "<div class='parallax'><img src='lib/imagens/".$row['img_receita']."'></div>";
    echo "</div>";
    echo "<div class='row container'>";
    echo "<h3>Ingredientes Necessários: </h3><p>".$row['ingredientes']."</p>";
    echo "<h3>Tempo de Preparo: </h3><p>".$row['tempo_preparo']." minutos</p>";
    echo "<h3>Rende até: </h3><p>".$row['porcoes']." porções</p>";
    echo "<h3>Modo de preparo: </h3><p>".$row['preparo']."</p>";
    echo "<h3>Categoria da Receita: </h3><p>".$row['categoria']."</p>";
    echo "</div>";
  }
?>

</div>

<?php
  require_once 'includes/footer.php';
 ?>

 <script>
   $(document).ready(function(){
     $('.parallax').parallax();
   });
 </script>
