<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <!-- Inclua o link para o Bootstrap via CDN -->
    <link rel="icon" type="image/x-icon" href="./icon/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body>
    <!-- Cabeçalho -->
    <header>
        <nav class="navbar navbar-expand-lg p-2 bg-primary text-light m-auto ">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="./Recursos/Logo NorDestinos Tour.png"/ height="48px"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Home</a>
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

    <!-- Corpo da Página -->
    <div class="container text-center mt-5">
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <h3>Joao Pessoa</h3>
                        <p>Joao Pessoa, na Paraiba, esta entre os destinos mais lindos do Brasil, principalmente por conta das inumeras praias paradisiacas e pela forte cultura regional. A capital traz ainda diversas atracoes para os turistas que gostam de praias tranquilas e nao dispensam visitar alguns pontos historicos nas suas viagens.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <h3>Pipa</h3>
                        <p>A Praia de Pipa tem se tornado um destino turistico cada vez mais popular desde a decada de 1970, quando ficou conhecida como um reduto de surfistas com paisagens paradisiacas. Localizada no municipio de Tibau do Sul, Pipa e na verdade um conjunto de praias na costa sul do estado do Rio Grande do Norte. O seu nome vem de uma pedra em formato de barril, ou pipa de vinho, que foi avistada na costa pelos portugueses.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <h3>Porto de Galinhas</h3>
                        <p>A regiao possui piscinas de aguas claras e mornas formadas entre corais, alem de estuarios, mangues, areia branca e coqueirais. Toda a regiao e muito frequentada por turistas e surfistas de diversas nacionalidades, tendo sido eleita pela revista Viagem e Turismo, da Editora Abril, como a "Melhor Praia do Brasil" por dez vezes consecutivas.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <h3>Jericoacoara</h3>
                        <p>Jericoacoara e uma praia virgem escondida atras das dunas da costa oeste de Jijoca de Jericoacoara, Ceara, Brasil. Selecionada pelo Washington Post como uma das 10 praias mais bonitas do mundo, Jeri e constituida por lagoas azuis, mar calmo e enormes dunas.</p>
                    </div>
                </div>
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