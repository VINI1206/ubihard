<?php
    $id_jogo = $_POST["id_jogo"];
    $nome = $_POST["nome"];
    $descricao = $_POST["descricao"];
    $valor = $_POST["valor"];
    $desenvolvedora = $_POST["desenvolvedora"];
    $distribuidora = $_POST["distribuidora"];
    $lancamento = $_POST["lancamento"];
    $link_imagem = $_POST["link_imagem"];
    $plataforma = $_POST["plataforma"];

    if (!$id_jogo OR !$nome OR !$descricao OR !$valor OR !$plataforma OR !$desenvolvedora OR !$distribuidora OR !$lancamento OR !$link_imagem) {
        header("Location: atualizar_jogo.php");
        exit;
    };

    include_once("conexao.php");

    $comando = "UPDATE jogos SET nome = '$nome', descricao = '$descricao', valor = $valor, plataformas = $plataforma desenvolvedora = '$desenvolvedora', distribuidora = '$distribuidora', lancamento = '$lancamento', link_imagem = '$link_imagem' WHERE id_jogo = $id_jogo;";
    
    if (mysqli_query($conexao, $comando)) {
        echo "Jogo atualizado com sucesso.";
    } else {
        echo "Erro ".mysqli_connect_error($conexao);   
    }

    mysqli_close($conexao);
    header("Location: atualizar_jogo.php");
    exit;
?>