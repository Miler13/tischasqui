<?php
include('../conexion.php');
$dato = $_POST['dato'];

$registro = mysqli_query($conexion,"SELECT * FROM estudiantes WHERE NombresEstudiante LIKE '%$dato%' ORDER BY idEstudiante ASC");
       echo '<table class="table table-striped table-condensed table-hover table-responsive">
        	<tr>
                       <th width="10%">Edad</th>
                         <th width="10%">Nick</th>
                        
                         <th width="10%">Pass</th>
                                 
                        <th width="10%">Opciones</th>
            </tr>';
      if(mysqli_num_rows($registro)>0){
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
      }else{
      	echo '<tr>
      				<td colspan="10">No se encontraron resultados</td>
      			</tr>';
      }
      echo '</table>';
?>
