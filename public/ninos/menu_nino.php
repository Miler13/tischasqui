  <?php
       // session_start();
        $codigo = $_SESSION["Codigo"];
        $estudiante = $_SESSION['NombreUsuario'];
        include '../admin/conexion.php';

        $cartas= mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM mensajes WHERE para='$estudiante' "));
       // include '../../admin/conexion.php';

     //      $inscripciones = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM inscripciones_asignaturas where idEstudiante = $codigo"));
   //     $tareas = mysqli_num_rows(mysqli_query($conexion,"SELECT entrega_tareas.idEntregaTareas as id, entrega_tareas.CodigoTareaDocente CodigoDocente, asignaturas.NombreAsignatura as Asignatura, entrega_tareas.Descripcion as Descripcion,  entrega_tareas.CodigoEnvioTarea as CodigoTarea, entrega_tareas.Archivo as Archivo
     //       FROM  entrega_tareas INNER JOIN asignaturas ON  entrega_tareas.idAsignatura =  asignaturas.idAsignatura 
     //                INNER JOIN estudiantes ON  entrega_tareas.idEstudiante =  estudiantes.idEstudiante
     //       where estudiantes.idEstudiante = '$codigo'"));
    
    ?>

<div class="col-md-2" style="background-color: rgba(255, 155, 10, .1);">
                <div class="list-group" style="background-color: rgba(255, 255, 255, .5);">
                    <a class="list-group-item" style="background-color: rgba(255, 200, 0, .3);" >Nino</a>
         <a href="mismensajes.php" class="list-group-item" style="background-color: rgba(255, 150, 0, .2);"><i class="glyphicon glyphicon-pencil"></i>   &nbsp;&nbsp; Mis Cartas 
                     <span class="label label-warning pull-right"><?php echo $cartas ?></span> 
                     </a>
          
          
                   
                </div>

            </div>