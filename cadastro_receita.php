<?php
  $titulo= "Cadastro de Receita";
  require 'includes/admin.php';
?>

<div class="container">

  <div class="row">
  <form class="col s12" method="POST" enctype="multipart/form-data">
    <div class="row">
      <div class="col s3">
        <center><h5>Foto da Receita</h5></center>
        <img class="responsive-img circle" src="lib/imagens/receita.png">
        <input type="file" name="photo_profile" />
      </div>
    </div>


    <div class="row">
      <div class="input-field col s6">
        <i class="material-icons prefix">account_circle</i>
        <input type="text" id="icon_prefix" type="text" class="validate" name="nome_receita">
        <label for="icon_prefix">Nome da Receita</label>
      </div>

      <div class="input-field col s6">
        <i class="material-icons prefix">av_timer</i>
        <input type="text" id="icon_prefix" type="text" class="validate" name="tempo_preparo">
        <label for="incon_prefix">Tempo de Preparo(em minutos)</label>
      </div>
    </div>


    <div class="row">
      <div class="row">
        <div class="input-field col s12">
          <textarea id="textarea1" class="materialize-textarea" name="ingredientes"></textarea>
          <label for="textarea1">Ingredientes</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <textarea id="textarea1" class="materialize-textarea" name="preparo"></textarea>
          <label for="textarea1">Como Preparar</label>
        </div>
      </div>

      <div class="row">
      <div class="input-field col s6">
        <i class="material-icons prefix">local_pizza</i>
        <input type="text" id="icon_prefix" type="text" class="validate" name="porcoes">
        <label for="icon_prefix">Porções</label>
      </div>

      <div class="input-field col s6">
        <select name="categoria">
          <option value="" disabled selected>Selecione</option>
          <option value="Bolos e Tortas">Bolos e Tortas</option>
          <option value="Carnes">Carnes</option>
          <option value="Saladas e Molhos">Saladas e Molhos</option>
          <option value="Massas">Massas</option>
          <option value="Doces e Sobremesas">Doces e Sobremesas</option>
        </select>
          <label>Categoria</label>
      </div>
      </div>
    </div>

    <div class="row">
      <div class="col s12">
        <center><input class="btn waves-effect waves-light" type="submit" value="Adicionar Receita" /></center>
      </div>
    </div>
  </form>
</div>
</div>

<?php
  require 'includes/footer.php';
  require 'includes/connection.php';

  $id_receita = 0;

  if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $nome_receita=$_POST['nome_receita'];
    $ingredientes=$_POST['ingredientes'];
    $preparo=$_POST['preparo'];
    $tempo_preparo=$_POST['tempo_preparo'];
    $porcoes=$_POST['porcoes'];
    $categoria=$_POST['categoria'];

    $stmt = $conn->prepare("INSERT INTO receitas (nome_receita, ingredientes, preparo, tempo_preparo, porcoes, categoria, id_receita) values(?,?,?,?,?,?,?)");
    $stmt->bind_param('ssssisi', $nome_receita, $ingredientes, $preparo, $tempo_preparo, $porcoes, $categoria, $id_receita);
    $stmt->execute();
    $id_receita = $stmt->insert_id;

        echo '<script>alert("Inserido com sucesso")</script>';

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

  }

?>

<script>
$(document).ready(function() {
  $('select').material_select();
});
</script>
