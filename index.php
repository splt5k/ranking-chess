<?php
require 'include/functions.php';
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title><?php echo $tituloSite; ?> - Ranking de Xadrez</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="template/style.css" id="stylesheet"> <!-- Estilo padrão -->
    <link rel="stylesheet" type="text/css" href="template/style-dark.css" id="dark-stylesheet" disabled> <!-- Estilo do Modo Escuro desabilitado por padrão -->
    <style>
        /* Adicione um estilo de cursor apontando para toda a linha da tabela */
        .chess-table tbody tr {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <!-- Botão de Acesso ao Painel de Administração -->
            <select id="torneios">
                <option value="" disabled selected hidden>Selecione um torneio</option>
                <?php
                // Chama a função GetTorneios para obter os dados dos torneios
                $torneios = GetTorneios();
                // Verifica se há dados dos torneios disponíveis
                if ($torneios !== null) {
                    // Divide os torneios em linhas
                    $linhas_torneios = explode("\n", $torneios);
                    // Loop através de cada linha de torneio e cria uma opção para cada um
                    foreach ($linhas_torneios as $linha) {
                        // Divide a linha do torneio em string e link
                        $partes_torneio = explode(",", $linha);
                        // Obtém a string do torneio
                        $string_torneio = $partes_torneio[0];
                        // Obtém o link do torneio
                        $link_torneio = $partes_torneio[1];
                        // Cria a opção com a string do torneio como texto visível e o link como valor
                        echo "<option value=\"$link_torneio\">$string_torneio</option>";
                    }
                }
                ?>
            </select>
            &nbsp;
            &nbsp;

            <a href="painel_admin.php" class="admin-button">Admin</a>
            
        </div>

        <h1>Ranking de Xadrez</h1>
        <div class="search-box">
            <input type="text" id="search" placeholder="Pesquisar por nome...">
        </div>
        <table class="chess-table">
            <thead>
                <tr>
                    <th>Posição</th>
                    <th>Nome</th>
                    <th>Categoria</th>
                    <th>Rating</th>
                    <!--<th>Vitórias</th>-->
                </tr>
            </thead>
            <tbody>
                <?php
                $players = getPlayers();
                $position = 1;
                foreach ($players as $player) {
                    if (!$player["a_enable"]) {
                        continue;
                    }
                    
                    $playerData = obterDadosJogador( $player['a_index']);
                    // Obtenha a idade do jogador
                    $idade =calcularIdade($playerData['a_data_nascimento']);
                    // Obtenha a classe CSS da categoria
                    $ageCategory = getAgeCategory($idade);

                    echo "<tr onclick='redirectToProfile(" . $player['a_index'] . ")'>";
                    echo "<td>" . $position . "</td>";
                    echo "<td>" . $player['a_nick'] . "</td>";
                    echo "<td title='" . $ageCategory['title'] . "'> <span class='icon " . $ageCategory['class'] . "'>" . $ageCategory['content'] . "</span></td>";
                    echo "<td>" . $player['a_rating_atual'] . getStatus(0,$player['a_index'], false). "</td>";
                    //echo "<td>" . $player['a_vitorias'] . "</td>";
                    echo "</tr>";
                
                    $position++;
                }
                ?>
            </tbody>
        </table>
    </div>
    <script src="template/script.js"></script>
    <script>
        // Função para redirecionar para o perfil do jogador
        function redirectToProfile(playerId) {
            window.location.href = 'profile.php?id=' + playerId;
        }
    </script>
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
        function abrirLink() {
            // Captura o valor selecionado no ListBox
            var listBox = document.getElementById("torneios");
            var selectedValue = listBox.options[listBox.selectedIndex].value;
            
            // Redireciona para o link correspondente
            window.location.href = selectedValue;
            
            // Reseta a seleção do ListBox
            listBox.selectedIndex = 0;
        }

        // Adiciona um evento de mudança ao ListBox
        window.onload = function() {
            var listBox = document.getElementById("torneios");
            listBox.addEventListener("change", function() {
                abrirLink();
            });
        };
    </script>

</body>
</html>
