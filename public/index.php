<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Chasquicito</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
      <link rel="shortcut icon" href="imagenes/imagenes/logo.JPG" type="image/x-icon">
      <link rel="stylesheet" href="css/reloj.css">
</head>

<body>

<?php include('includes/menuPublico.php') ?>

    <!-- Header Carousel -->
    

    
    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-16">
                <h1 class="page-header">
                SISTEMA CHASQUI
                </h1>
            </div>
            <div class="col-lg-16">
                <p>
                     
                     <h3 >
                     Bienvenidos al Sistema de mensajeria CHASQUI
                </h3>
                <p>
                <p>
                    
                <p>
                <br>
             
            </div>
            <hr>
            <br>
            <br>
             <div class="row row-no-gutters">
             <br>
             <div class="col-md-4 col-sm-7">
                <div class="panel panel-default text-center">
                    
                    
                <div class="panel-heading">
                         <div class="wrap">
				          <div class="widget">
                             <div class="fecha"> 
                                <p> </p><br>
                                <p>FECHA ACTUAL</p><br>
                                <p> </p><br>
					            <p id="diaSemana" class="diaSemana"></p>
					            <p id="dia" class="dia"></p>
					            <p>de </p>
					            <p id="mes" class="mes"></p>
					            <p>del </p>
					            <p id="year" class="year"></p>
                                <p> </p><br>
				              </div>
                            </div>
                          </div>    
                          <script src="js/reloj.js"></script>             
                    </div>
                    <div class="panel-body">
                    <h4>
                        <div class="wrap">
				          <div class="widget">
                          <p>Hora</p><br>
                          <p> </p>
				              <div class="reloj">
					            <p id="horas" class="horas"></p>
					            <p>:</p>
					            <p id="minutos" class="minutos"></p>
					            <p>:</p>
					            <div class="caja-segundos">
					               <p id="ampm" class="ampm"></p>
					               <p id="segundos" class="segundos"></p>
					            </div>
				              </div>
			              </div>                          
			             </div>
			           <script src="js/reloj.js"></script>
                     </h4>                  
                    </div>


                    
                </div>
            </div>  
          
            <div class="col-md-4 col-sm-7">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                    <img src="imagenes/boletines.png" width="250" height="150">
                    </div>
                    <div class="panel-body">
                        <h4>Boletines </h4>
                        <p> todas las publicaciones</p>
                        <a href="boletines.php" class="btn btn-primary"><i class="glyphicon glyphicon-download-alt"></i> Entrar</a>
                        </div>
                </div>
            </div>
      
             <div class="col-md-4 col-sm-7">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                    <img src="imagenes/ninos.png" width="250" height="150">
                    </div>
                    <div class="panel-body">
                        <h4>Niños </h4>
                        <p> Bienvenidos</p>
                        <a href="loginNinos.php" class="btn btn-primary"><i class="glyphicon glyphicon-download-alt"></i> Entrar</a>
                        <a href="renino.php" class="btn btn-success"><i class="fa fa-mail-forward"></i> Registrate</a>
                    </div>
                </div>
            </div>

              

        </div>
        </div>
        <!-- /.row -->

        <div class="row">
            <div class="col-lg-12">
               
            </div>
            <br>

            <h3 >
            <br>
                </h3>
            </div>
        <!-- Features Section -->
       
        
        <!-- /.row -->
   
        </div>
        <br> <br>
        <hr>
   
<?php

include('includes/footer.php');
 ?>

</body>

</html>
