<?php
include('../conexion.php');
$dato = $_POST['dato'];

$registro = mysqli_query($conexion,"SELECT * FROM Especialistas WHERE NombresEspecialista LIKE '%$dato%' ORDER BY idEspecialista ASC");
       echo '<table class="table table-striped table-condensed table-hover table-responsive">
        	<tr>
                       <th width="10%">Nombres</th>
                         <th width="10%">Apellidos</th>
                         <th width="15%">Cedula</th>
                         <th width="10%">Correo</th>
                         <th width="10%">Celular</th>
                         <th width="10%">Telefono</th>
                         <th width="20%">Direccion</th>
                         <th width="5%">Estado</th>            
                        <th width="10%">Opciones</th>
            </tr>';
      if(mysqli_num_rows($registro)>0){
	     while($registro2 = mysqli_fetch_array($registro)){
		  echo '<tr>
      			         <td>'.$registro2['NombresEspecialista'].'</td>
                                <td>'.$registro2['ApellidosEspecialista'].'</td>
                                <td>'.$registro2['CedulaEspecialista'].'</td>
                                 <td>'.$registro2['CorreoEspecialista'].'</td>
                                <td>'.$registro2['CelularEspecialista'].'</td>
                                <td>'.$registro2['TelefonoEspecialista'].'</td>
                                <td>'.$registro2['DireccionEspecialista'].'</td>
                                <td>'.$registro2['Estado'].'</td>
                               <td> <a href="javascript:editarRegistro('.$registro2['idEspecialista'].');">
                              <img src="images/lapiz.png" width="25" height="25" alt="delete" title="Editar" /></a>
                              <a href="javascript:eliminarRegistro('.$registro2['idEspecialista'].');">
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
