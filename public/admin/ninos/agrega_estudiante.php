
<?php
include('../conexion.php');

$id = $_POST['id-registro'];
$proceso = $_POST['pro'];
$carnet = $_POST['carnet'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$cedula = $_POST['cedula'];
$correo = $_POST['correo'];
$celular = $_POST['celular'];
$telefono = $_POST['telefono'];
$direccion = $_POST['direccion'];
$estado = $_POST['estado'];
$grupo = $_POST['grupo'];
$foto = "images/fotos_perfil/perfil.jpg";

switch($proceso){
	case 'Registro': mysqli_query($conexion,"INSERT INTO estudiantes (CarnetEstudiante, NombresEstudiante, ApellidosEstudiante, CedulaEstudiante, CorreoEstudiante, CelularEstudiante, TelefonoEstudiante, DireccionEstudiante, Estado, Idgrupo, Foto) VALUES('$carnet','$nombre','$apellido','$cedula','$correo','$celular','$telefono','$direccion','$estado', '$grupo', '$foto')");

          $consulta=mysqli_query($conexion,"SELECT idEstudiante from estudiantes where CarnetEstudiante = '$carnet' and CorreoEstudiante = '$correo'");              
                           while($filas=mysqli_fetch_array($consulta)){
                                 $codigo_estudiante=$filas['idEstudiante'];                           
                 }
     mysqli_query($conexion,"INSERT INTO usuarios (NombreUsuario, PassUsuario, NivelUsuario, Codigo, Foto) VALUES('$correo','$cedula','3','$codigo_estudiante', '$foto')");
	
  break;

	case 'Edicion': mysqli_query($conexion,"UPDATE estudiantes SET CarnetEstudiante = '$carnet', NombresEstudiante = '$nombre', ApellidosEstudiante = '$apellido', CedulaEstudiante = '$cedula', CorreoEstudiante = '$correo', CelularEstudiante = '$celular', TelefonoEstudiante = '$telefono', DireccionEstudiante = '$direccion', Estado = '$estado' , Idgrupo = '$grupo' where idEstudiante = '$id'");

  mysqli_query($conexion,"UPDATE usuarios SET NombreUsuario = '$correo', PassUsuario = '$cedula' where Codigo = '$id'");

	break;
   }
    $registro = mysqli_query($conexion,"SELECT * FROM estudiantes ORDER BY idEstudiante ASC");

    echo '<table class="table table-striped table-condensed table-hover">
        	<tr>
                        <th width="10%">Edad</th>
                         <th width="10%">Nick</th>
                        
                         <th width="10%">Pass</th>
                                 
                        <th width="10%">Opciones</th>
            </tr>';
	while($registro2 = mysqli_fetch_array($registro)){
		echo '<tr>
				         <td>'.$registro2['CarnetEstudiante'].'</td>
                  <td>'.$registro2['NombresEstudiante'].'</td>
                
                  <td>'.$registro2['CedulaEstudiante'].'</td>
                  
                   <td> <a href="javascript:editarRegistro('.$registro2['idEstudiante'].');">
                  <img src="images/lapiz.png" width="25" height="25" alt="delete" title="Editar" /></a>
                  <a href="javascript:eliminarRegistro('.$registro2['idEstudiante'].');">
                  <img src="images/borrar.png" width="25" height="25" alt="delete" title="Eliminar" /></a>
                  </td>
				</tr>';
	}
   echo '</table>';
?>