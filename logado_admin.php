<?php
    if(!isset($_SESSION)) {
        session_start();
    }

    if(!isset($_SESSION['id'])) {
        die("Você não pode acessar esta página porque não está logado.<p><a href='index.php'>Entrar</a></p>");
    } elseif($_SESSION['id'] != 4) {
        die("Você não tem permissão de acessar essa página. <p><a href='index_usuario.php'>Voltar</a></p>");
    }
?>
