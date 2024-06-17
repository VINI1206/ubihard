<?php
    $nome = $_POST["nome"];
    $descricao = $_POST["descricao"];
    $valor = $_POST["valor"];
    $desenvolvedora = $_POST["desenvolvedora"];
    $distribuidora = $_POST["distribuidora"];
    $data_lancamento = $_POST["data_lancamento"];
    $link_imagem = $_POST["link_imagem"];

    if (!$nome OR !$descricao OR !$valor OR !$desenvolvedora OR !$distribuidora OR !$data_lancamento OR !$link_imagem) {
        header("Location: cadastro_jogo.html");
        exit;
    };

    include_once("conexao.php");

    $comando = "INSERT INTO jogos (nome, descricao, valor, desenvolvedora, distribuidora, lancamento, link_imagem) VALUES ('$nome','$descricao',$valor,'$desenvolvedora','$distribuidora','$data_lancamento','$link_imagem')";

    if (mysqli_query($conexao, $comando)) {
        echo "Jogo cadastrado com sucesso.";
    } else {
        echo "Erro ".mysqli_connect_error($conexao);
    }

    mysqli_close($conexao);
?>
