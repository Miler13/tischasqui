       <?php
       include ('conexion.php');

        $TotalEstudiantes = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM ninos"));
        $TotalDocentes = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM especialistas"));
                                                                                                
        $TotalAsignaturas = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM subareas"));
        $TotalCarreras = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM areas"));
       
        $TotalGrupos = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM grupos"));
       
        
        $TotalUsuarios = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM usuarios"));
     
       
        
        $TotalUsuarios =mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM usuarios"));
        $TotalAsignaciones = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM asignaciones"));
     
         $TotalMensajes = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM mensajes"));
         $TotalPalabras = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM pclave"));
         $TotalEditor = mysqli_num_rows(mysqli_query($conexion,"SELECT * FROM editor"));
        ?>

         <div class="row">
            <div class="col-lg-12">
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-3x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-graduation-cap fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4 class="media-heading">Niños</h4>
                         <p>Total de Niños: <span class="label label-danger pull-right"><?php echo $TotalEstudiantes ?></span></p>
                         <a href="nino.php" class="btn btn-success"><i class="fa fa-mail-forward"></i>  Entrar</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-3x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-book fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                         <h4 class="media-heading">Especialistas</h4>
                       <p>Total de Especialistas: <span class="label label-danger pull-right"><?php echo $TotalDocentes ?></span></p>
                       <a href="especialistas.php" class="btn btn-success"><i class="fa fa-mail-forward"></i>  Entrar</a>
                    </div>                    
                </div>
            </div>


      
           

            
            

        <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-3x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-group fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                         <h4 class="media-heading">Editor</h4>
                      <p>Total de Editores: <span class="label label-danger pull-right"><?php echo $TotalEditor ?></span></p>
                      <a href="editor.php" class="btn btn-success"><i class="fa fa-mail-forward"></i>  Entrar</a>
                    </div>
                   
                </div>
            </div>
            
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-3x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-user fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                      <h4 class="media-heading">Cuentas de Usuarios</h4>
                        <p>Total de Usuarios: <span class="label label-danger pull-right"><?php echo $TotalUsuarios ?></span></p>
                        <a href="usuarios.php" class="btn btn-success"><i class="fa fa-mail-forward"></i>  Entrar</a>
                    </div>                   
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-3x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-sign-in fa-stack-1x fa-inverse"></i>
                        </span>
                    
                    </div>
                    <div class="panel-body">
                          <h4 class="media-heading"> Area</h4>
                      <p>Total de Areas: <span class="label label-danger pull-right"><?php echo $TotalCarreras?></span></p>
                      <a href="areas.php" class="btn btn-success"><i class="fa fa-mail-forward"></i>  Entrar</a>
                    </div>

               
                   
                </div>
            </div>


            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-3x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-list-alt fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>                    
                    <div class="panel-body">
                       <h4 class="media-heading">Registrar Sub Areas</h4>
                       <p>Total de Sub Areas: <span class="label label-danger pull-right"><?php echo $TotalAsignaturas ?></span></p>
                       <a href="subarea.php" class="btn btn-success"><i class="fa fa-mail-forward"></i>  Entrar</a>
                    </div>

                </div>
            </div>


            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-3x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-newspaper-o fa-stack-1x fa-inverse"></i>
                        </span>
                 
                        </div>
                    <div class="panel-body">
                        <h4 class="media-heading">Asignaciones Especialista</h4>
                       <p>Total de Asignaciones: <span class="label label-danger pull-right"><?php echo $TotalAsignaciones ?></span></p>
                      <a href="asignaciones.php" class="btn btn-success"><i class="fa fa-mail-forward"></i>  Entrar</a>
                    </div>
                </div>
			</div>  
           		
                
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-3x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-newspaper-o fa-stack-1x fa-inverse"></i>
                        </span>
                 
                        </div>
                    <div class="panel-body">
                        <h4 class="media-heading"> Palabras por Area</h4>
                       <p>Total de palabras: <span class="label label-danger pull-right"><?php echo $TotalPalabras ?></span></p>
                      <a href="palabras.php" class="btn btn-success"><i class="fa fa-mail-forward"></i>  Entrar</a>
                    </div>
                </div>
			</div>  

				<div class="col-md-3 col-sm-6">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<span class="fa-stack fa-3x">
								  <i class="fa fa-circle fa-stack-2x text-primary"></i>
								  <i class="fa fa-gears fa-stack-1x fa-inverse"></i>
							</span>

                    </div>
                    <div class="panel-body">
                            <h4 class="media-heading">Configuraciones</h4>
                        <p>Configuracion de Cuenta<span class="label label-danger pull-right"></span></p>
                      <a href="cambiar_foto.php" class="btn btn-success"><i class="fa fa-mail-forward"></i>  Entrar</a>
                    </div>
                </div>
            </div>

        </div>

