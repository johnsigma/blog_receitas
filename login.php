
<?php
	$titulo = "Login";
  require_once 'includes/header.php';
?>


<form class="col s12" name="loginform" method="post" action="logando.php">
	<div class="row">
		<div class="container"><br>
			  <h2>Admin</h2>
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
			  </div>
        <center><input class="btn waves-effect waves-light" type="submit" value="Logar" /></center>
			</div>
	</div>
</form>

 <script>
   $(document).ready(function(){
     $('.parallax').parallax();
   });

   $(document).ready(function() {
    $('input#input_password').characterCounter();
  });
 </script>


<?php
  require_once 'includes/footer.php';
 ?>
