<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Atualizar</title>
    </head>
    <body>
        <div>
            <table border="1" style='width:100%'>
                <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Descrição</th>
                <th>Valor</th>
                <th>Desenvolvedora</th>
                <th>Distribuidora</th>
                <th>lançamento</th>
                <th>imagem</th>
                </tr>

            <?php
                include_once("conexao.php");

                $comando = "SELECT * FROM jogos";

                $registro = mysqli_query($conexao, $comando);

                while ($resultado = mysqli_fetch_array($registro)) {
                    echo "<tr>";
                    echo "<td>$resultado[0]</td>";
                    echo "<td>$resultado[1]</td>";
                    echo "<td>$resultado[2]</td>";
                    echo "<td>$resultado[3]</td>";
                    echo "<td>$resultado[4]</td>";
                    echo "<td>$resultado[5]</td>";
                    echo "<td>$resultado[6]</td>";
                    echo "<td>$resultado[7]</td>";
                    echo "</tr>";
                }

                mysqli_close($conexao);
            ?>
        </div>
            <div>
            <form action="action_atualizar_jogo.php" name="jogo" method="POST">
                <label for="id_jogo">Id do jogo:</label>
                <input type="number" id="id_jogo" name="id_jogo" min=0 required><br><br>
                
                <label for="nome">Nome do jogo:</label>
                <input type="text" id="nome" name="nome" maxlength="100" required autofocus><br><br>
                
                <label for="descricao">Descrição do jogo:</label>
                <input type="text" id="descricao" name="descricao" maxlength="300" required><br><br>
                
                <label for="valor">Valor do jogo:</label>
                <input type="number" id="valor" name="valor" min=0 step=0.01 required><br><br>
                
                <label for="desenvolvedora">Desenvolvedora do jogo:</label>
                <input type="text" id="desenvolvedora" name="desenvolvedora" maxlength="50" required><br><br>
                
                <label for="distribuidora">Distribuidora do jogo:</label>
                <input type="text" id="distribuidora" name="distribuidora" maxlength="50" required><br><br>

                <label for="lancamento">Data de lançamento:</label>
                <input type="date" id="lancamento" name="lancamento" min="1900-01-01" max="2024-12-31" required><br><br>

                <label for="link_imagem">Link da imagem (da steam) do jogo:</label>
                <input type="text" id="link_imagem" name="link_imagem" maxlength="500" required><br><br>

                <input type="submit" value="Enviar"/>
            </form>
        </div>
    </body>
</html>