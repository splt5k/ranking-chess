<?php
require 'include/functions.php';
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title><?php echo $tituloSite; ?> - Painel de Administração</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="template/style.css" id="stylesheet"> <!-- Estilo padrão -->
    <link rel="stylesheet" type="text/css" href="template/style-dark.css" id="dark-stylesheet" disabled> <!-- Estilo do Modo Escuro desabilitado por padrão -->
    <style>
        .textbox-container {
            display: none; /* Oculta a caixa de texto por padrão */
            margin-top: 10px;
            justify-content: center; /* Centraliza horizontalmente */
            align-items: center; /* Centraliza verticalmente */
        }

        #textbox {
            width: 100%; /* Garante que o textarea ocupe 100% da largura do container */
            max-width: 100%; /* Define a largura máxima do textarea */
            resize: vertical; /* Permite redimensionamento vertical */
        }
    </style>
</head>
<body>
    <div class="container">
    <div class="header">
            <!-- Botão de Acesso ao Painel de Administração -->
            <a href="site_config.php" class="admin-button">configurações do site</a>
        </div>
        <h1>Painel de Administração</h1>

        <?php

        // Verificar se o formulário de login foi enviado
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $username = $_POST['username'];
            $password = $_POST['password'];

            if (loginUser($username, $password)) {
                // Autenticação bem-sucedida
                $_SESSION['user_id'] = 1; // Armazene um valor na sessão para indicar que o usuário está logado
            } else {
                // Autenticação falhou
                $_SESSION['error_message'] = 'Credenciais inválidas. Tente novamente.';
            }
        }

        // Verificar se o usuário está logado
        if (isUserLoggedIn()) {
            // Usuário logado, exibir o botão "Sair"
            echo '<a href="index.php" class="button">Home</a>';
            echo '<a href="logout.php" class="logout-button">Sair</a>';

            // Exibir três botões (Cadastro de Jogador, Cadastro de Confrontos, Atualização)
            echo '<div class="buttons">';
            echo '<a href="cadastro_jogador.php" class="button">Cadastrar Atleta</a>';
            echo '<a href="cadastro_confronto.php" class="button">Cadastrar Confronto</a>';
            echo '<a href="atualizacao.php" class="button">Atualizar Confrontos</a>';

            echo '<a href="#" class="button" onclick="toggleTextBox()">Torneios</a>';
    
            echo '<div class="textbox-container" id="textbox-container">';
            echo '    <textarea rows="4" cols="50" id="textbox"></textarea>';
            echo '    <br>';
            echo '   <button onclick="saveText()">Salvar</button>';
            echo '</div>';
 
            echo '</div>';
        } else {
            // Usuário não está logado, exibir o formulário de login
            echo '<div class="login-container">';
            echo '<div class="login-form">';
            echo '<h2>Login</h2>';
            echo '<form action="painel_admin.php" method="post">';
            echo '<div class="form-group">';
            echo '<label for="username">Nome de Usuário:</label>';
            echo '<input type="text" id="username" name="username" required>';
            echo '</div>';
            echo '<div class="form-group">';
            echo '<label for "password">Senha:</label>';
            echo '<input type="password" id="password" name="password" required>';
            echo '</div>';
            echo '<button type="submit" class="button">Entrar</button>';
            echo '<button type="button" class="button" id="voltarButton">Voltar</button>';
            echo '</form>';
            echo '</div></div>';
            
            // JavaScript para redirecionar quando o botão "Voltar" for clicado
            echo '<script>
            // Selecionar o botão "Voltar" pelo ID
            const voltarButton = document.getElementById("voltarButton");

            // Adicionar um evento de clique ao botão
            voltarButton.addEventListener("click", function() {
                // Redirecionar para a página "index.php" quando o botão for clicado
                window.location.href = "index.php";
            });
            </script>';
                    }
        ?>
        
        <div class="datagrid">
            <h2>Confrontos futuros</h2>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Desafiado</th>
                        <th>Desafiante</th>
                        <th>Data</th>
                        <!-- <th>Vencedor</th> -->
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $confrontosQuery = "SELECT * FROM t_confrontos WHERE a_resultado IS NULL ORDER BY a_index DESC LIMIT 20";
                    $confrontosResult = $conn->query($confrontosQuery);

                    while ($row = $confrontosResult->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td><span>" . $row['a_index'] . "</span></td>";
                        echo "<td><span style='color: " . $_cor_desafiado . ";'>" . obterNomeJogador($row['a_desafiado']) . ($row['a_resultado'] !== null ? ' ' . getStatus($row['a_index'], $row['a_desafiado'], true) : '') . "</span></td>";
                        echo "<td><span style='color: " . $_cor_desafiante . ";'>" . obterNomeJogador($row['a_desafiante']) . ($row['a_resultado'] !== null ? ' ' . getStatus($row['a_index'], $row['a_desafiante'], true) : '') . "</span></td>";
                        echo "<td><span>" . date('d/m/Y', strtotime($row['a_data'])) . "</span></td>";
                        //echo getStatusColor($row['a_resultado']);
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>

    </div>
    <script>
        // Função para verificar a preferência de cor do usuário
        const checkColorScheme = () => {
            const darkStyleSheet = document.getElementById('dark-stylesheet');
            const systemPrefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;

            if (systemPrefersDark) {
                // Se o sistema do usuário preferir o modo escuro, habilite o estilo do modo escuro
                darkStyleSheet.removeAttribute('disabled');
            } else {
                // Caso contrário, mantenha o estilo padrão
                darkStyleSheet.setAttribute('disabled', 'true');
            }
        };

        // Verifique a preferência de cor do usuário quando a página é carregada
        checkColorScheme();

        // Assine alterações na preferência de cor do sistema
        window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', checkColorScheme);
    </script> 
    <script>
        // Função para abrir a caixa de texto e o botão ao clicar no link
        function toggleTextBox() {
        var container = document.getElementById('textbox-container');
        if (container.style.display === 'none') {
            container.style.display = 'block'; // Exibe a caixa de texto

            // Faz uma requisição AJAX para obter os dados dos torneios
            var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        // Atualiza o conteúdo da caixa de texto com os dados retornados pela função PHP
                        textbox.value = xhr.responseText;
                    }
                };
                xhr.open("GET", "include/functions.php?action=getTorneios", true);
                xhr.send();

        } else {
            container.style.display = 'none'; // Oculta a caixa de texto
        }
    }

        // Função para salvar o texto da caixa de texto
        function saveText() {
            // Obter o texto da textarea
            var textbox = document.getElementById('textbox');
            var text = textbox.value;

            // Criar um objeto FormData para enviar o texto via AJAX
            var formData = new FormData();
            formData.append('text', text);

            // Fazer uma requisição AJAX para enviar o texto para a função PHP
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // Exibir uma mensagem de sucesso ou fazer qualquer outra ação necessária
                    alert(xhr.responseText);
                }
            };
            xhr.open('POST', 'include/functions.php?action=editarTorneios', true);
            xhr.send(formData);
        }
    </script>   
</body>
</html>
