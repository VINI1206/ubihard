<?php
    $usuario = $_POST["usuario"];
    $email = $_POST["email"];
    $senha = md5($_POST["senha"]);
    $senha_dois = md5($_POST["senha_dois"]);
    $data_nascimento = $_POST["data_nascimento"];

    if (!$usuario OR !$email OR !$senha OR !$senha_dois OR !$data_nascimento) {
        header("Location: cadastro.html");
        exit;
    };

    if ($senha != $senha_dois) {
        header("Location: senhas_diferentes.html");
        exit;
    };

    include_once("conexao.php");

    $comando = "INSERT INTO usuarios (email, nome, senha, data_nascimento) VALUES ('$email','$usuario','$senha','$data_nascimento');";

    if (mysqli_query($conexao, $comando)) {
        echo "Usuário cadastrado com sucesso.";
    } else {
        echo "Erro ".mysqli_connect_error($conexao);
    }

    mysqli_close($conexao);
?>