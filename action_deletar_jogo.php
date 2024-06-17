<?php
    $id_jogo = $_POST["id_jogo"];

    if (!$id_jogo) {
        header("Location: deletar_jogo.php");
        exit;
    }
    
    include_once("conexao.php");

    $comando = "DELETE FROM jogos WHERE id_jogo = $id_jogo";

    if (mysqli_query($conexao, $comando)) {
        mysqli_close($conexao);
        header("Location: deletar_jogo.php");
        exit;
    } else {
        echo "Erro ".mysqli_connect_error($conexao);
        mysqli_close($conexao);
        echo "<p><a href='deletar_jogo.php'>Voltar</a></p>";
    }
?>