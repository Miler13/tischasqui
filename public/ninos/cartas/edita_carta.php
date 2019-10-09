<?php
include('../../admin/conexion.php');
$id = $_POST['id'];
$valores = mysqli_query($conexion,"SELECT * FROM cartas WHERE idcartas = '$id'");
$valores2 = mysqli_fetch_array($valores);
$datos = array(
				 
				0 => $valores2['contenido'], 
			    1 => $valores2['foto'],  
				); 
echo json_encode($datos);
?>