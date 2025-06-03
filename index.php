<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/Project/PHP/PHPProject.php to edit this template
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title> Escola de Música </title>
        <link rel="stylesheet" href="estilo.css"
    </head>
    <body>
        <form method="post">
            <h1> Cadastro do Aluno </h1>
            <label for="fcod">Código:</label><br>
            <input type="text" id="codigo" name="codigo" value=""><br>
            <label for="fname">Nome:</label><br>
            <input type="text" id="nome" name="nome" value=""><br>
            <label for="femail">E-mail:</label><br>
            <input type="text" id="email" name="email" value=""><br>
            <label for="ffone">Fone:</label><br>
            <input type="text" id="fone" name="fone" value=""><br>
            <input type="submit" value="Cadastrar">
        </form>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST"){
           $codigo = $_POST["codigo"];
           $nome = $_POST["nome"];
           $email = $_POST["email"];
           $fone = $_POST["fone"];
           echo "<h1> Dados do Alunos </h1>";
           echo "Nome:  $nome <br>";
           echo "E-mail: $email <br>";
           echo "Fone: $fone <br>";
        // Conectar o banco de dados
        $caminho_banco = 'bdmusica.db';
        $pdo = new PDO ("sqlite: " . $caminho_banco);
        $pdo->setAttribute (PDO::ATTR_ERRMODE, PDO:: ERRMODE_EXCEPTION);
        echo "Conexão com o banco de dados SQLite realizada "
        . "com sucesso!<br>" ;
        //
        $sql_inserir_dados = "
        INSERT INTO alunos (id_aluno, nome, email, fone, ativo)
        VALUES ($codigo, $nome, $email, $fone, 'A'); 
        ";
        $pdo->exec ($sql_inserir);
        echo "Aluno cadastrado com sucesso!";
       
        }
        ?>
    </body>
</html>
