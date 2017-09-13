
<footer class="page-footer amber darken-1">
  <div class="container">
    <div class="row">
      <div class="col l6 s12 logo2">
          <div><img src="lib/imagens/icono.png" class="icone2"></div>
      </div>
      <div class="col l4 offset-l2 s12">
        <h5 class="white-text">Desenvolvedores</h5>
          <ul>
            <li><a class="grey-text text-lighten-3" href="https://www.facebook.com/john.cunha.982">John Cunha</a></li>
            <li><a class="grey-text text-lighten-3" href="https://www.facebook.com/manuella.brandao.33">Manuella Brandão</a></li>
            <li><a class="grey-text text-lighten-3" href="https://www.facebook.com/joao.vitor.56829446">João Vitor Soares</a></li>
          </ul>
      </div>
    </div>
  </div>
      <div class="footer-copyright">
        <div class="container">
          © 2017 TEAM CATUABA Todos os direitos reservados
        </div>
      </div>
</footer>


      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="lib/materialize/js/materialize.min.js"></script>
      <script>
        $(".dropdown-button").dropdown();
        $('.dropdown-button').dropdown({
          inDuration: 300,
          outDuration: 225,
          constrainWidth: false, // Does not change width of dropdown to that of the activator
          hover: true, // Activate on hover
          gutter: 0, // Spacing from edge
          belowOrigin: false, // Displays dropdown below the button
          alignment: 'left', // Displays dropdown with edge aligned to the left of button
          stopPropagation: false // Stops event propagation
        }
      );
      </script>

</body>
</html>
