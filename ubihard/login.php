<?php

    include_once("conexao.php");

    if ($_POST["email"]) {
        $email = $_POST["email"];
        $senha = $_POST["senha"];

        $comando = "SELECT * FROM usuarios WHERE (email = '$email') AND (senha = '$senha')";

        mysqli_query($conexao, $comando);
        

    } elseif ($_POST["usuario"]) {
        $usuario = $_POST["usuario"];
        $senha = $_POST["senha"];

        $comando = "SELECT * FROM usuarios WHERE (usuario = '$usuario') AND (senha = '$senha')";

        mysqli_query($conexao, $comando);

    } else {
        mysqli_close($conexao);
        header("Location: erro_login.html");
        exit;
    }

?>