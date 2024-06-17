<?php
    if (isset($_SESSION)) {
        session_start();
        $_SESSION = array();
        session_destroy();
    }
    
    include_once('conexao.php');

    if (isset($_POST['usuario']) || isset($_POST['senha'])) {
    
        if (strlen($_POST['usuario']) == 0) {
            echo "Preencha seu usuário.";
        } else if (strlen($_POST['senha']) == 0) {
            echo "Preencha sua senha.";
        } else {
            $nome = $_POST['usuario'];
            $senha = md5($_POST['senha']);
    
            $comando = "SELECT * FROM usuarios WHERE nome = '$nome' AND senha = '$senha';";
            
            $resultado = mysqli_query($conexao, $comando);

            $usuario = mysqli_fetch_array($resultado);

            if (!isset($_SESSION)) {
                session_start();

                $_SESSION['id'] = $usuario[0];
                $_SESSION['nome'] = $usuario[2];

                if ($_SESSION['id'] == 4) {
                    header("Location: index_admin.php");
                } else {
                    header("Location: index_usuario.php");
                }
            }
        }
    }    
?>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="mystyle.css">
        <link rel="icon" type="image/x-icon" href="ubihard_icon.png">
    </head>
    <body>
        <div class="login-container">
            <h2>Olá, seja bem-vindo à UbiHard!</h2>
            <form id="form" name="cadastro" method="post" autocomplete="on">
                <label class="texto_form" for="usuario">Usuário:</label>
                <input class="caixa" type="text" id="usuario" name="usuario" maxlength="32" required autofocus>
                <br>
                <label class="texto_form" for="senha">Senha:</label>
                <input class="caixa" type="password" id="senha" name="senha" maxlength="32" required autocomplete="off">
                <br><br>
                <input class="botao" type="submit" value="Enviar"/>
                <p></p>
                <input class="botao" type="reset" name="botao" value="Limpar"/>
                <p></p>
                <a class="botao" id="botao_cadastro" href="cadastro.html">Cadastre-se</a>
            </form>
        </div>
        <style>
            body, html {
                margin: 0;
                padding: 0;
                width: 100%;
                height: 100%;
                overflow: hidden;
                font-family: Arial, sans-serif;
                background-color: #012d4b;
            }

            .login-container {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 100vh;
                text-align: center;
                color: #000000;
            }

            #form {
                background: rgba(255, 255, 255, 0.8);
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
                width: 200px;
                max-width: 90%;
                color: #000000;
            }

            .texto_form {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }

            .caixa {
                width: 80%;
                padding: 10px;
                margin-bottom: 05px;
                border: 1px solid #ffffff;
                border-radius: 5px;
            }

            .botao {
                width: 100%;
                padding: 10px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .botao:hover {
                background-color: #4c8f50;
            }

            #botao_cadastro {
                text-decoration: none;
                background-color: #015f50;
            }

            #botao_cadastro:hover {
                background-color: #015f70;
                color: #ffffff;
            }
        </style>
    </body>
</html>