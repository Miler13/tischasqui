
<?php
include('../conexion.php');

$id = $_POST['id-registro'];
$proceso = $_POST['pro'];
$nombre = $_POST['nombre'];
$carrera = $_POST['carrera'];
$year = $_POST['year'];
$semestre = $_POST['semestre'];

switch($proceso){
	case 'Registro': mysqli_query($conexion,"INSERT INTO asignaturas (NombreAsignatura, IdCarrera, IdGrupo, IdSemestre) VALUES('$nombre','$carrera','$year','$semestre')");
	break;
	case 'Edicion': mysqli_query($conexion,"UPDATE asignaturas SET NombreAsignatura = '$nombre', IdCarrera = '$carrera', IdGrupo = '$year',IdSemestre = '$semestre' where idAsignatura = '$id'");
	break;
   }
    $registro = mysqli_query($conexion,"SELECT asignaturas.idAsignatura as id, asignaturas.NombreAsignatura as Asignatura, carreras.NombreCarrera as Carrera, grupos.NumeroGrupo grupo, 
semestres.NombreSemestre as Semestre FROM asignaturas 
                                 INNER JOIN carreras ON  asignaturas.Idcarrera =  carreras.idCarrera 

                                 INNER JOIN semestres ON  asignaturas.Idsemestre = semestres.idSemestre
                                 
                                 INNER JOIN grupos ON  asignaturas.IdGrupo =  grupos.NumeroGrupo
  ORDER BY asignaturas.idAsignatura ASC");

    echo '<table class="table table-striped table-condensed table-hover">
        	 <tr>
                        <th width="30%">Sub Area</th>  
                        <th width="30%">Area</th> 
                             
                        <th width="20%">Opciones</th>
                   </tr>';
                   
	while($registro2 = mysqli_fetch_array($registro)){
		echo '<tr>
                          <td>'.$registro2['Asignatura'].'</td>
                          <td>'.$registro2['Carrera'].'</td>
                         
                           <td> <a href="javascript:editarRegistro('.$registro2['id'].');">
                              <img src="images/lapiz.png" width="25" height="25" alt="delete" title="Editar" /></a>
                              <a href="javascript:eliminarRegistro('.$registro2['id'].');">
                             <img src="images/borrar.png" width="25" height="25" alt="delete" title="Eliminar" /></a>
                             </td>
                </tr>';
  }
	
   echo '</table>';
?>
