<?php
       // session_start();
        $codigo = $_SESSION["Codigo"];
        include '../admin/conexion.php';
       // include '../../admin/conexion.php';
    
    ?>

<div class="col-md-3">
    <div class="list-group">
        <a class="list-group-item active">Catalogo del Niño</a>

        <a href="carta_nino.php" class="list-group-item">
            <i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp; Cartas
        </a>

        <br>

    </div>
</div>