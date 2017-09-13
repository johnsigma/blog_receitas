<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="lib/materialize/css/materialize.min.css"  media="screen,projection"/>
      <link href="includes/estilo.css" rel="stylesheet">

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

      <title><?php echo $titulo ?></title>
      <link rel="icon" href="lib/imagens/icono.png" class="img-resposive"/>

    </head>

<body class="red lighten-1">
  <div class="navbar-fixed">
    <nav>
      <div class="nav-wrapper amber darken- z-depth-4">
        <a href="index.php" class="brand-logo"> <img src="lib/imagens/icono.png" class="icone"></a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
        <a class='dropdown-button btn' href='#' data-activates='dropdown1'>Menu</a>
        <ul id='dropdown1' class='dropdown-content'>
          <li><a href="bolos_tortas.php">Bolos e Tortas</a></li>
          <li><a href="carnes.php">Carnes</a></li>
          <li><a href="saladas_molhos.php">Saladas e Molhos</a></li>
          <li><a href="massas.php">Massas</a></li>
          <li><a href="doces_sobremesas.php">Doces e Sobremessas</a></li>
      </ul>
      </ul>
      </div>
  </div>
    </nav>
<script>
  $(".button-collapse").sideNav();
</script>
