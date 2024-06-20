<?php
    $conexao = mysqli_connect('localhost','root','','ubihard');

    if (!$conexao) {
        die("Falha na conexão: " . mysqli_connect_error());
    }
?>
