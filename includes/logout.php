<?php
  echo 'Sessão finalizada';
  session_start();
  session_destroy();
  header("Location: ../index.php");
?>
