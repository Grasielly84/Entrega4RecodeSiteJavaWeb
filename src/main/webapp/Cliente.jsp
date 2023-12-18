<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read and Delete</title>
<!-- Inclua o link para o Bootstrap via CDN -->
<link rel="icon" type="image/x-icon" href="./icon/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body class="text-center">
    <!-- Cabeçalho -->
    <header>
        <nav class="navbar navbar-expand-lg p-2 bg-primary text-light m-auto">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="./Recursos/Logo NorDestinos Tour.png" height="48px"/> </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="./Index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ReadController">Cadastro</a>
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
	<h1 class="mt-5">Lista de Clientes</h1>
	<div class="container mt-5">
	<a href="./Cadastro.jsp" class="btn btn-primary mb-5">Criar novo</a>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>CPF</th>
					<th>Endereco</th>
					<th>Telefone</th>
					<th>Loguin</th>
					<th>Senha</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cliente}" var="cliente">
					<tr>
						<td>${cliente.id}</td>
						<td>${cliente.nome}</td>
						<td>${cliente.cpf}</td>
						<td>${cliente.endereco}</td>
						<td>${cliente.telefone}</td>
						<td>${cliente.loguin}</td>
						<td>${cliente.senha}</td>
						
						<td>
							<a href="UpdateController?id=${cliente.id}" class="btn btn-success">Editar</a>
							<a href="DeleteController?id=${cliente.id}"
							class="btn btn-danger">Excluir</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	 <!-- Rodapé -->
    <footer class="bg-primary text-light text-center py-3 fixed-bottom">
        &copy; 2023 NorDestinos. Todos os direitos reservados.
    </footer>
	<!-- Inclua os scripts do Bootstrap via CDN -->
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>