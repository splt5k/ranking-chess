<?php
require 'include/functions.php';

// Verifique se o usuário está logado
if (!isUserLoggedIn()) {
    header('Location: painel_admin.php'); // Redirecione para a página de login
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $jogadorEnabled = $_POST['enabled'] == 1 ? 1 : 0;
    $jogadorId = $_POST['jogador_id'];
    $nickname = $_POST['nickname'];
    $data_nascimento = $_POST['data_nascimento'];
    $rating_inicial = $_POST['a_rating_inicial'];
    $rating_atual = $_POST['a_rating_atual'];
    $vitorias = $_POST['a_vitorias'];
    $buc1 = $_POST['a_buc1'];

    // Atualize as informações do jogador no banco de dados
    $updateQuery = "UPDATE t_atletas SET a_enable = ? ,a_nick = ?, a_data_nascimento = ?, a_rating_inicial = ?, a_rating_atual = ?, a_vitorias = ?, a_buc1 = ? WHERE a_index = ?";
    $stmt = $conn->prepare($updateQuery);
    $stmt->bind_param("issiiddi", $jogadorEnabled,$nickname, $data_nascimento, $rating_inicial, $rating_atual, $vitorias, $buc1, $jogadorId);

    if ($stmt->execute()) {
        echo "Informações do jogador atualizadas com sucesso!";
        header('Location: cadastro_jogador.php'); // Redirecione para a página de cadastro de jogador
        exit();
    } else {
        echo "Erro ao atualizar as informações do jogador. Por favor, tente novamente.";
    }
} else {
    // Verifique se um ID de jogador válido foi fornecido
    if (isset($_GET['id'])) {
        $jogadorId = $_GET['id'];

        // Consulta para obter as informações do jogador com base no ID
        $query = "SELECT * FROM t_atletas WHERE a_index = ?";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("i", $jogadorId);
        $stmt->execute();
        $result = $stmt->get_result();

        // Verifique se o jogador com o ID fornecido existe
        if ($result->num_rows === 0) {
            echo "Jogador não encontrado.";
            header('Location: index.php'); // Redirecione para a página de login
            exit();
        }

        // Obtenha os detalhes do jogador
        $jogador = $result->fetch_assoc();
    } else {
        echo "ID de jogador não especificado.";
        header('Location: index.php'); // Redirecione para a página de login
        exit();
    }
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title><?php echo $tituloSite; ?> - Editar Jogador</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="template/style.css" id="stylesheet"> <!-- Estilo padrão -->
    <link rel="stylesheet" type="text/css" href="template/style-dark.css" id="dark-stylesheet" disabled> <!-- Estilo do Modo Escuro desabilitado por padrão -->
</head>
<body>
    <div class="container">
        <h1>Editar Jogador</h1>
        <form action="editar_jogador.php" method="post">
            <input type="hidden" name="jogador_id" value="<?php echo $jogador['a_index']; ?>">
            <div class="form-group">
                <label for="enabled">Ativo:</label>
                <input type="checkbox" id="enabled" name="enabled" value="1" <?php echo $jogador['a_enable'] == 1 ? 'checked' : ''; ?>>
            </div>
            <div class="form-group">
                <label for="nickname">Nome de Jogador:</label>
                <input type="text" id="nickname" name="nickname" value="<?php echo $jogador['a_nick']; ?>" required>
            </div>
            <div class="form-group">
                <label for="a_rating_inicial">Rating Inicial:</label>
                <input type="text" id="a_rating_inicial" name="a_rating_inicial" value="<?php echo $jogador['a_rating_inicial']; ?>" required>
            </div>
            <div class="form-group">
                <label for="a_rating_atual">Rating Atual:</label>
                <input type="text" id="a_rating_atual" name="a_rating_atual" value="<?php echo $jogador['a_rating_atual']; ?>" required>
            </div>
            <div class="form-group">
                <label for="a_vitorias">Pontos:</label>
                <input type="text" id="a_vitorias" name="a_vitorias" value="<?php echo $jogador['a_vitorias']; ?>" required>
            </div>
            <div class="form-group">
                <label for="a_buc1">Buc1:</label>
                <input type="text" id="a_buc1" name="a_buc1" value="<?php echo $jogador['a_buc1']; ?>" required>
            </div>
            <div class="form-group">
                <label for="data_nascimento">Data de Nascimento:</label>
                <input type="date" id="data_nascimento" name="data_nascimento" value="<?php echo $jogador['a_data_nascimento']; ?>" required>
            </div>
            <button type="submit" class="button">Atualizar Jogador</button>
            <button type="button" class="button" id="voltarButton">Voltar</button>
        </form>
        <script>
            // Selecionar o botão "Voltar" pelo ID
            const voltarButton = document.getElementById("voltarButton");

            // Adicionar um evento de clique ao botão
            voltarButton.addEventListener("click", function() {
                // Redirecionar de volta para a página "painel_admin.php"
                window.location.href = "cadastro_jogador.php";
            });
        </script>
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
</body>
</html>
