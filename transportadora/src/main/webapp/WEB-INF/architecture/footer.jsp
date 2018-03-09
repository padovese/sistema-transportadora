<!DOCTYPE html>
<html>
  <head>
    <style></style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: -23.511058, lng: -46.396049};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDfSU5oBEBY2bebjwlY940olel6-eymi0&callback=initMap">
    </script>
    
    <div id="prefooter"> Meios para contato: <p> Telefone:(11) 95784-5836 ou (11) 98639-7860</p><p>Email:patricia.prospero@hotmail.com ou bhspadoveze@gmail.com</p>Endereço: <a href="https://www.google.com.br/maps/place/R.+Redu%C3%A7%C3%A3o+do+Lor%C3%AAto,+25+-+Vila+Sao+Jose,+S%C3%A3o+Paulo+-+SP,+08140-485/@-23.5110583,-46.3982375,17z/data=!3m1!4b1!4m5!3m4!1s0x94ce6486787721bd:0x1508f2dbb5b7ff15!8m2!3d-23.5110583!4d-46.3960488">
   		<p><i>Rua Redução do Loreto,25</i></p></div>
   		
	<footer>Sistema Desenvolvido por <u>Patricia Próspero</u> e <u>Bruno Padovese</u></footer>
	
  </body>
</html>
