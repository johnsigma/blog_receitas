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
    <div class="nav-wrapper amber darken-">
      <a href="index_admin.php" class="brand-logo"> <img src="lib/imagens/icono.png" class="icone"></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="cadastro_receita.php">Adicionar Receita</a></li>
      <a class='dropdown-button btn' href='#' data-activates='dropdown1'>Menu</a>
      <ul id='dropdown1' class='dropdown-content'>
        <li><a href="bolos_tortas_admin.php">Bolos e Tortas</a></li>
        <li><a href="carnes_admin.php">Carnes</a></li>
        <li><a href="saladas_molhos_admin.php">Saladas e Molhos</a></li>
        <li><a href="massas_admin.php">Massas</a></li>
        <li><a href="doces_sobremesas_admin.php">Doces e Sobremessas</a></li>
    </ul>
  </ul>
    </div>
  </div>
  </nav>
