
<?php session_start(); ?>

		<?php
			include '../admin/conexion.php';
			if(isset($_POST['usuario'])){
				
				$usuario = htmlentities($_POST['usuario']);
				$pw = htmlentities($_POST['password']);

			//	$numero = srand((double)microtime()*1000000);

				$log = mysqli_query($conexion,"SELECT * FROM usuarios WHERE NombreUsuario='$usuario' AND PassUsuario='$pw'");
				if (mysqli_num_rows($log)>0) {
					$row = mysqli_fetch_array($log);

					$_SESSION["NombreUsuario"] = $row['NombreUsuario']; 
				  	$_SESSION["NivelUsuario"] = $row['NivelUsuario']; 
				  	$_SESSION["Codigo"] = $row['Codigo']; 
				  	if ($_SESSION["NivelUsuario"] == 3) {
						echo '<script> window.location="../ninos/nino.php"; </script>'; 
				  	}
				}
				else{
					echo '<script> alert("Usuario o contraseña incorrectos. ");</script>';
					echo '<script> window.location="../loginNinos.php"; </script>';
				}
			}
		?>	
