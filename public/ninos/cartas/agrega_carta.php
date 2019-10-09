
<?php
include('../../admin/conexion.php');

$id = $_POST['id-registro'];
$proceso = $_POST['pro'];
$contenido = $_POST['contenido'];

switch($proceso){
	case 'Registro': mysqli_query($conexion,"INSERT INTO cartas (contenido, foto) VALUES('$contenido', 'images/cartas/carta1.jpg')");
		break;
	case 'Edicion': mysqli_query($conexion,"UPDATE cartas SET contenido = '$contenido', foto = 'images/cartas/imgCartaEdit.jpg' where idcartas = '$id'");
		break;
}



    $registro = mysqli_query($conexion,"SELECT * FROM cartas ORDER BY idcartas ASC");

    echo '<table class="table table-striped table-condensed table-hover">
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