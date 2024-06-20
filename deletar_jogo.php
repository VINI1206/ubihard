<?php
    include_once("logado_admin.php")
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Deletar um jogo</title>
        <link rel="stylesheet" href="mystyle.css">
        <link rel="icon" type="image/x-icon" href="ubihard_icon.png">
    </head>
    <body>
        <h1>Delete um jogo:</h1>
        <table border="1" style='width:50%'>
            <tr>
            <th>Id</th>
            <th>Nome</th>
            </tr>

        <?php
            include_once("conexao.php");

            $comando = "SELECT * FROM jogos";

            $registro = mysqli_query($conexao, $comando);

            while ($resultado = mysqli_fetch_array($registro)) {
                echo "<tr>";
                echo "<td>$resultado[0]</td>";
                echo "<td>$resultado[1]</td>";
                echo "</tr>";
            }

            mysqli_close($conexao);
        ?>
        
        <form action="action_deletar_jogo.php" name="jogo" method="POST">
            <label for="id_jogo">Id do jogo:</label>
            <input type="number" id="id_jogo" name="id_jogo" min=0 required>
            <input type="submit" value="Enviar"/>
        </form><br>
        <a href="index_admin.php">Voltar</a>
    </body>
</html>