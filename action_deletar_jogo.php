<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <?php
            include_once("conexao.php");

            if (isset($_POST)) {
                $id_jogo = $_POST["id_jogo"];

                $comando = "DELETE FROM jogos WHERE id_jogo = $id_jogo";

                if (mysqli_query($conexao, $comando)) {
                    header("Location: deletar_jogo.php");
                    exit;
                } else {
                    echo "Erro ".mysqli_connect_error($conexao);
                }

            mysqli_close($conexao);
            }
        ?>
    </body>
</html>