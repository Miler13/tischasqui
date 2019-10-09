<?php
include('../../admin/conexion.php');

$id = $_POST['id'];

mysqli_query($conexion,"DELETE FROM cartas WHERE idcartas = '$id'");

$registro = mysqli_query($conexion,"SELECT * FROM cartas ORDER BY idcartas ASC");

echo '<table class="table table-striped table-condensed table-hover table-responsive">
        	          <tr>
                        <th width="33%">Contenido</th>
                         <th width="33%">Foto</th>            
                        <th width="33%">Opciones</th>
                   </tr>';
	while($registro2 = mysqli_fetch_array($registro)){
		        echo '<tr>
		                        <td>'.$registro2['contenido'].'</td>
                                <td>'.$registro2['foto'].'</td>
                               <td> <a href="javascript:editarRegistro('.$registro2['idcartas'].');">
                              <img src="../../admin/images/lapiz.png" width="25" height="25" alt="delete" title="Editar" /></a>
                              <a href="javascript:eliminarRegistro('.$registro2['idcartas'].');">
                              <img src="../../admin/images/borrar.png" width="25" height="25" alt="delete" title="Eliminar" /></a>
                        </td>
			         	</tr>';
	}
echo '</table>';
?>