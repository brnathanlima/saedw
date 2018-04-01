<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="pt-br">
<head>
	<c:import url="/common/cabecalho.jsp" />
	<title>SAEDW - Categorias de Websites</title>
</head>
<body>
<div class="wrapper">
    <div class="sidebar" data-color="red" data-image="assets/img/sidebar-5.jpg">
    
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://localhost:8080/SAEDW/painel-web-designer.jsp" class="simple-text">
                    SAEDW
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="CategoriaDeWebsitesController">
                   		<i class="pe-7s-folder"></i>
                        <p>Categorias de Websites</p>
                    </a>
                </li>
                <li>
                    <a href="EstruturaDeWebsiteController">
                    	<i class="pe-7s-browser"></i>
                        <p>Estruturas de Websites</p>
                    </a>
                </li>
                <li>
                    <a href="SolicitacaoDeDesenvolvimentoController">
                    	<i class="pe-7s-bell"></i>
                        <p>Solicitacoes de Desenvolvimento</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="LogoutController">
                                <p>SAIR</p>
                            </a>
                        </li>
						<li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">CATEGORIAS DE WEBSITES
                                <a href="CategoriaDeWebsitesController?acao=novoCadastro" class="btn btn-success pull-right" role="button">NOVA CATEGORIA</a>
                           		</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                    	<tr>
	                                        <th>Nome</th>
	                                    	<th>A��es</th>
                                    	</tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="categoria" items="${categorias}" varStatus="id">
											<tr>
												<td>${categoria.nome}</td>
												<td class="td-actions">
													<a href="CategoriaDeWebsitesController?acao=visualizar&id=${categoria.id}">
                                                    <button type="button" rel="tooltip" title="Editar" class="btn btn-info btn-simple btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                    </a>
                                                    <a href="CategoriaDeWebsitesController?acao=excluir&id=${categoria.id}">
                                                    <button type="button" rel="tooltip" title="Excluir" class="btn btn-danger btn-simple btn-sm">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                    </a>
                                                </td>
											</tr>
										</c:forEach>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="https://www.nathanaellima.com">Nathanael Lima</a>
                </p>
            </div>
        </footer>

    </div>
</div>
</body>