<?php
    $id_jogo = $_POST["id_jogo"];
    $nome = $_POST["nome"];
    $descricao = $_POST["descricao"];
    $valor = $_POST["valor"];
    $desenvolvedora = $_POST["desenvolvedora"];
    $distribuidora = $_POST["distribuidora"];
    $lancamento = $_POST["lancamento"];
    $link_imagem = $_POST["link_imagem"];

    if (!$id_jogo OR !$nome OR !$descricao OR !$valor OR !$desenvolvedora OR !$distribuidora OR !$lancamento OR !$link_imagem) {
        header("Location: atualizar_jogo.php");
        exit;
    };

    include_once("conexao.php");

    $select = "SELECT * FROM jogos WHERE id_jogo = $id_jogo;";

    $jogo = mysqli_query($conexao, $select);

    $jogo = mysqli_fetch_array($jogo);

    $update = "UPDATE jogos SET nome = '$nome', descricao = '$descricao', valor = $valor, desenvolvedora = '$desenvolvedora', distribuidora = '$distribuidora', lancamento = '$lancamento', link_imagem = '$link_imagem' WHERE id_jogo = $id_jogo;";
    
    mysqli_query($conexao, $update);
    
    header("Location: atualizar_jogo.php");
    exit;
?>