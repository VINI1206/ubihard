<?php
    include_once("logado_usuario.php");
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mystyle.css">
        <link rel="icon" type="image/x-icon" href="ubihard_icon.png">
        <title>Pesquisa</title>
    </head>
    <body>
        <form name="pesquisa_jogo" action="pesquisar.php" method="post">
            <label for="pesquisa">Pesquisar:</label>
            <input type="text" id="pesquisa" name="pesquisa" required>
            <input type="submit" value="Enviar">
        </form>
        <p><a href="logout.php">Voltar e sair</a></p>
    </body>
    <footer>
        <p>Para falar com o suporte, entre em contato com o número 91444076 por whatsapp</p>
    </footer>
</html>