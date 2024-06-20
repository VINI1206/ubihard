<?php
    $nome = $_POST["usuario"];
    $email = $_POST["email"];
    $data_nascimento = $_POST["data_nascimento"];

    if (!$nome OR !$email OR !$data_nascimento) {
        header("Location: trocar_senha.html");
        exit;
    }

    include_once("conexao.php");

    $select = "SELECT * FROM usuarios WHERE nome = '$nome' AND email = '$email' AND data_nascimento = '$data_nascimento';";

    $resultado = mysqli_query($conexao, $select);

    $usuario = mysqli_fetch_array($resultado);

    if ($usuario) {
        session_start();

        $_SESSION["id"] = $usuario[0];
        $_SESSION["nome"] = $usuario[2];

        header("Location: action_trocar_senha.php");
        mysqli_close($conexao);
        exit;
    } else {
        header("Location: usuario_nao_encontrado.html");
        mysqli_close($conexao);
        exit;
    }
?>