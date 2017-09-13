<?php
  require 'includes/connection.php';
?>

<html>

<head>
  <title>Logado</title>
  <script type="text/javascript">
    function loginsuccessfully() {
      setTimeout("window.location='index_admin.php'", 2000);
    }
    function loginfailed() {
      setTimeout("window.location='login.php'", 2000);
    }
    </script>
</head>

<body>

<?php
  $email=$_POST['email'];
  $senha=$_POST['senha'];
  $sql = $conn->query("SELECT * FROM admin WHERE email = '$email' AND senha = '$senha'");
  $row = mysqli_num_rows($sql);
  if($row > 0) {
    session_start();
    $_SESSION['email']=$_POST['email'];
    $_SESSION['senha']=$_POST['senha'];
    echo "<center>Logado com sucesso. Aguarde enquanto é redirecionado.</center>";
    echo "<script>loginsuccessfully()</script>";
  } else {
    echo "<center>Email e/ou senha inválidos. Aguarde um instante para tentar novamente.</center>";
    echo "<script>loginfailed()</script>";
  }
?>

</body>
</html>
