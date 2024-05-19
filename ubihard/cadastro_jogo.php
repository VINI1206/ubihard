<?php

    $nome = $_POST["nome"];
    $descricao = $_POST["descricao"];
    $valor = $_POST["valor"];
    $desenvolvedora = $_POST["desenvolvedora"];
    $distribuidora = $_POST["distribuidora"];
    $link_imagem = $_POST["link_imagem"];

    foreach ($_POST as $item) {
        if (!$item) {
            header("Location: cadastro_jogo.html");
            exit;
        };
    };

    include_once("conexao.php");

    $comando = "INSERT INTO jogos (nome, descricao, valor, desenvolvedora, distribuidora, link_imagem) VALUES ('$nome','$descricao',$valor,'$desenvolvedora','$distribuidora','$link_imagem')";

    if (mysqli_query($conexao, $comando)) {
        echo "Jogo cadastrado com sucesso.";
    } else {
        echo "Erro ".mysqli_connect_error($conexao);
    }

    mysqli_close($conexao);
    
?>