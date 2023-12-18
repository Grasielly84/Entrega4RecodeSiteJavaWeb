<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>Atualizar</title>
</head>
<body>
    <!-- Cabeçalho -->
    <header>
        <nav class="navbar navbar-expand-lg p-2 bg-primary text-light m-auto">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="./Recursos/Logo NorDestinos Tour.png"/ height="48px"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#cadastros">Cadastro</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#sobre">Sobre</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contato">Contato</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1 class="mt-5" >Atualizar Cliente</h1>
				<form class="mt-5" action="UpdateController" method="post">
				<div class="form-group">
						<label for="id">ID:</label> <input type="text"
							class="form-control" id="id" name="id" value="${cliente.id}" readonly>
					</div>
					<div class="form-group">
						<label for="nome">Nome:</label> <input type="text"
							class="form-control" id="nome" name="nome" value="${cliente.nome}" required>
					</div>
					<div class="form-group">
						<label for="cpf">Cpf:</label> <input type="text"
							class="form-control" id="cpf" name="cpf" value="${cliente.cpf}" required>
					</div>
					<div class="form-group">
						<label for="endereco">Endereco:</label> <input type="text"
							class="form-control" id="endereco" name="endereco" value="${cliente.endereco}" required>
					</div>
					<div class="form-group">
						<label for="telefone">Telefone:</label> <input type="text"
							class="form-control" id="telefone" name="telefone" value="${cliente.telefone}" required>
					</div>
					<div class="form-group">
						<label for="loguin">Loguin:</label> <input type="text"
							class="form-control" id="loguin" name="loguin" value="${cliente.loguin}" required>
					</div>
					<div class="form-group">
						<label for="senha">Senha:</label> <input type="password"
							class="form-control" id="senha" name="senha" value="${cliente.senha}" required>
					</div>
					
					<button type="submit" class="btn btn-primary">Atualizar</button>
				</form>
			</div>
		</div>
	</div>
	 <!-- Rodapé -->
    <footer class="bg-primary text-light text-center py-3 fixed-bottom">
        &copy; 2023 NorDestinos. Todos os direitos reservados.
    </footer>
 
 
	<!-- Inclua os scripts do Bootstrap via CDN -->
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
 
</body>
</html>