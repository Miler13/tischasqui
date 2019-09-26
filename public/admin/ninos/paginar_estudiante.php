<?php
include('../conexion.php');
	$paginaActual = $_POST['partida'];

    $numeroRegistros = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM estudiantes"));
    $nroLotes = 10;
    $nroPaginas = ceil($numeroRegistros/$nroLotes);
    $lista = '';
    $tabla = '';

    if($paginaActual > 1){
        $lista = $lista.'<li><a href="javascript:pagination('.($paginaActual-1).');">Anterior</a></li>';
    }
    for($i=1; $i<=$nroPaginas; $i++){
        if($i == $paginaActual){
            $lista = $lista.'<li class="active"><a href="javascript:pagination('.$i.');">'.$i.'</a></li>';
        }else{
            $lista = $lista.'<li><a href="javascript:pagination('.$i.');">'.$i.'</a></li>';
        }
    }
    if($paginaActual < $nroPaginas){
        $lista = $lista.'<li><a href="javascript:pagination('.($paginaActual+1).');">Siguiente</a></li>';

    }
  
  	if($paginaActual <= 1){
  		$limit = 0;
  	}else{
  		$limit = $nroLotes*($paginaActual-1);
  	}
  	$registro = mysqli_query($conexion,"SELECT * FROM estudiantes LIMIT $limit, $nroLotes ");
  	$tabla = $tabla.'<table class="table table-striped table-condensed table-hover table-responsive">
			                <tr>
                          <th width="10%">Edad</th>
                         <th width="10%">Nick</th>
                         
                         <th width="10%">Pass</th>
                        
                                   
                        <th width="10%">Opciones</th>
                     </tr>';		
          	while($registro2 = mysqli_fetch_array($registro)){
      $tabla = $tabla.'<tr>
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
        
    $tabla = $tabla.'</table>';
    $array = array(0 => $tabla,
    			   1 => $lista);

    echo json_encode($array);
?>