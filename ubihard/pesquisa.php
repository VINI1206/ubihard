<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Resultado da pesquisa</title>
    </head>
    <body>
        <table border="1" style='width:50%'>
            <tr>
            <th>Imagem</th>
            <th>Nome</th>
            <th>Preço</th>
            </tr>

        <?php
            $valor = $_POST["pesquisa"];
            
            if (!$valor) {
                header("Location: index.html");
                exit;
            }
            
            include_once("conexao.php");

            $comando = "SELECT * FROM jogos WHERE nome LIKE '%$valor%'";

            $registro = mysqli_query($conexao, $comando);

            while ($resultado = mysqli_fetch_array($registro)) {
                echo "<tr>";
                echo "<td><img src='$resultado[6]'></td>";
                echo "<td>$resultado[1]</td>";
                echo "<td>R$$resultado[3]</td>";
                echo "</tr>";
            }

            mysqli_close($conexao);
        ?>
    </body>
</html>