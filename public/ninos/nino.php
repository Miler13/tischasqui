
<?php
session_start();
include '../admin/conexion.php';

if(isset($_SESSION['NombreUsuario'])) {
     if ($_SESSION["NivelUsuario"] == 3) {
            $nino = $_SESSION['NombreUsuario'];
            $codigo = $_SESSION["Codigo"];

                // $consulta=mysqli_query($conexion,"select Foto from ninos where idEstudiante = $codigo");
                // while($filas=mysqli_fetch_array($consulta)){
                //          $foto=$filas['Foto'];
                //  }

                $consulta=mysqli_query($conexion,"select Foto from usuarios where Codigo = $codigo");                  
                while($filas=mysqli_fetch_array($consulta)){
                         $foto=$filas['Foto'];                           
                 }

                //  $consulta2 = mysqli_query($conexion,"select concat (NombresEstudiante, ' ', ApellidosEstudiante) as Estudiante from estudiantes where idEstudiante = $codigo");
                //  while($filas2=mysqli_fetch_array($consulta2)){
                //          $estudiante=$filas2['Estudiante'];
                //  }
                //  
                ?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Laboratorios informatica-sistemas UMSS</title>
    <link href="../admin/css/bootstrap.css" rel="stylesheet">
    <link href="../css/modern-business.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="shortcut icon" href="../imagenes/logoUNI.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/reloj.css">
    <link rel="stylesheet" href="css/index.css">
</head>

<body>
<br>
    <?php
        include ('menu_inicio_ninos.php');
    ?>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <div class="col-md-3"><img src="../imagenes/logo.jpg" width="80" height="80" class="img-responsive"></div>
                    <div class="col-md-6">
                        <img src="../imagenes/banerEst.png" class="img-responsive">
                    </div>
                    <div class="col-md-3">
                        <br>
                        <img class="img-responsive img-circle" src="<?php echo $foto ?>" width="50px" height="50px">
                        <h5>
                            <i class="fa fa-circle fa-stack-1x fa-inverse" style="color:green; text-align: left; "></i>
                                <b> &nbsp; Online:</b> <?php echo $nino ?>
                        </h5>
                    </div>
                </div>
            <div class="col-lg-12">
                <ol class="breadcrumb">
                    <li><a href="../index.php">Inicio</a></li>
                    <li class="active">Niños</li>
                </ol>
            </div>
        <!-- /.row -->

        <!-- Content Row -->

        <!-- Sidebar Column -->
            <?php
                include ('menu_ninos.php');
            ?>

            <!-- Content Column -->
            <div class="col-md-9">
                <h3>Bienvenido Niño : <b style="color:green;"><?php echo $nino; ?></b></h3>
                <p> Aqui va la descripcion de las acciones del niño</p>

                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="panel panel-default text-center">
                            <div class="panel-heading">
                                <span class="fa-stack fa-5x">
                                    <img src="images/Signature.png" class="img-responsive">
                                </span>
                            </div>
                            <div class="panel-body">
                                <h4>Cartas</h4>
                                <a href="carta_nino.php" class="btn btn-primary"> <i class="glyphicon glyphicon-download"></i>Entrar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <hr>
        <!-- Footer -->
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <?php
    include('../includes/footer.php');
 ?>
</body>

</html>

<?php
     }
     else{
        echo '<script> alert("No Tienes los permisos para acceder a esta pagina.");</script>';
         echo '<script> window.location="../index.l.php"; </script>';
     }
}else{
 echo '<script> window.location="../index.l.php"; </script>';
}
?>
