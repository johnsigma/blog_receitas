<?php
  $titulo= "Editar receita";
  require 'includes/admin.php';

  if(isset($_GET['id_receita'])){
    $id_receita = isset($_GET['id_receita'])? $_GET['id_receita'] : null;

    require 'includes/connection.php';

    $sql = "SELECT * FROM receitas WHERE id_receita = '$id_receita'";
    $result = $conn->query($sql);
    $user = $result->fetch_assoc();
    $conn->close();
  } else {
    header("Location: index.php");
  }
?>

<div class="container">

  <div class="row">
  <form action="editar.php" class="col s12" method="POST" enctype="multipart/form-data">
    <input type="hidden" name="id_receita" value="<?=$user['id_receita']?>" />
    <div class="row">
      <div class="col s3">
        <center><h5>Foto da Receita</h5></center>
        <img class="responsive-img circle" src="lib/imagens/receita.png">
        <input type="file" name="photo_profile" value="<?=$user['photo_profile']?>" />
      </div>
    </div>


    <div class="row">
      <div class="input-field col s6">
        <i class="material-icons prefix">account_circle</i>
        <input type="text" id="icon_prefix" type="text" class="validate" name="nome_receita" value="<?=$user['nome_receita']?>">
        <label for="icon_prefix">Nome da Receita</label>
      </div>

      <div class="input-field col s6">
        <i class="material-icons prefix">av_timer</i>
        <input type="text" id="icon_prefix" type="text" class="validate" name="tempo_preparo" value="<?=$user['tempo_preparo']?>">
        <label for="incon_prefix">Tempo de Preparo(em minutos)</label>
      </div>
    </div>


    <div class="row">
      <div class="row">
        <div class="input-field col s12">
          <textarea id="textarea1" type="text" class="materialize-textarea" name="ingredientes" value="<?=$user['ingredientes']?>"></textarea>
          <label for="textarea1">Ingredientes</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <textarea id="textarea1" type="text" class="materialize-textarea" name="preparo" value="<?=$user['preparo']?>"></textarea>
          <label for="textarea1">Como Preparar</label>
        </div>
      </div>

      <div class="row">
      <div class="input-field col s6">
        <i class="material-icons prefix">local_pizza</i>
        <input type="text" id="icon_prefix" type="text" class="validate" name="porcoes" value="<?=$user['porcoes']?>">
        <label for="icon_prefix">Porções</label>
      </div>

      <div class="input-field col s6">
        <select name="categoria" value="<?=$user['categoria']?>">
          <option value="" disabled selected>Selecione</option>
          <option value="<?=$user['Bolos e Tortas']?>">Bolos e Tortas</option>
          <option value="<?=$user['Carnes']?>">Carnes</option>
          <option value="<?=$user['Saladas e Molhos']?>">Saladas e Molhos</option>
          <option value="<?=$user['Massas']?>">Massas</option>
          <option value="<?=$user['Doces e Sobremesas']?>">Doces e Sobremesas</option>
        </select>
          <label>Categoria</label>
      </div>
      </div>
    </div>

    <div class="row">
      <div class="col s12">
        <center><input class="btn waves-effect waves-light" type="submit" value="Editar Receita" /></center>
      </div>
    </div>
  </form>
</div>
</div>

<?php
  require 'includes/footer.php';
?>

<script>
$(document).ready(function() {
  $('select').material_select();
});
</script>
