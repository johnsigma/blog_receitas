<?php
  $titulo= "CookBook - Carnes";
  require_once 'includes/admin.php';
 ?>

<div class="parallax-container">
  <div class="parallax"><img src="lib/imagens/carnes.jpg"></div>
  <div class="icono"><img src="lib/imagens/icono.png"></div>
  <h2>Carnes</h2>
</div>

<div class="row">

<?php
  require 'includes/connection.php';

  if($conn->connect_error){
          echo 'Erro: '.$conn->connect_error;
  }

  $sql = "SELECT * FROM receitas WHERE categoria = 'Carnes' ORDER BY id_receita DESC";

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
    echo "<a href='excluir.php?id_receita=".$row['id_receita']."' class='waves-effect waves-light btn red accent-4 right'><i class='material-icons left'>cancel</i>Excluir Postagem</a>";
    echo "<a href='editar_cadastro_receita.php?id_receita=".$row['id_receita']."' class='waves-effect waves-light btn blue darken-4 right'><i class='material-icons left'>chrome_reader_mode</i>Editar Postagem</a>";
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
