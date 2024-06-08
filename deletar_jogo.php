<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Deletar</title>
    </head>
    <body>
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
        </form>
    </body>
</html>