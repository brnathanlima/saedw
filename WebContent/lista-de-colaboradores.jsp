<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="pt-br">
<head>
	<c:import url="/common/cabecalho.jsp" />
	<title>SAEDW - Colaboradores</title>
</head>
<body>
	<div class="wrapper">
	    <div class="sidebar" data-color="blue" data-image="assets/img/sidebar-4.jpg">
	    
	    	<div class="sidebar-wrapper">
	            <div class="logo">
	                <a href="administradorDeInstituicao?acao=visualizarPainel" class="simple-text">
	                    SAEDW
	                </a>
	            </div>
	
	            <ul class="nav">
	                <li class="active">
	                    <a href="colaborador?acao=listar">
	                   		<i class="pe-7s-user"></i>
	                        <p>Colaboradores</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="webDesigner?acao=listar">
	                    	<i class="pe-7s-users"></i>
	                        <p>Web-Designers</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="gerente?acao=listar">
	                    	<i class="pe-7s-portfolio"></i>
	                        <p>Gerentes</p>
	                    </a>
	                </li>
	            </ul>
	    	</div>
	    </div>
	
	    <div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
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
	                                <h4 class="title">COLABORADORES
	                                <a href="colaborador?acao=novoCadastro" class="btn btn-success pull-right" role="button">NOVO COLABORADOR</a>
	                            	</h4>
	                            </div>
	                            <div class="content table-responsive table-full-width">
	                            	<c:choose>
										<c:when test="${not empty successMessage}">
											<div class="alert alert-success" role="alert">
												<span> <b>Sucesso - </b>${successMessage} </span>
											</div>											
										</c:when>
									</c:choose>
	                                <table class="table table-hover table-striped">
	                                    <thead>
	                                    	<tr>
		                                        <th>Nome</th>
												<th>Matr�cula</th>
												<th>Setor</th>
												<th>Cargo</th>
		                                    	<th style="text-align: center;">A��es</th>
	                                    	</tr>
	                                    </thead>
	                                    <tbody>
	                                    	<c:forEach var="colaborador" items="${colaboradores}" varStatus="id">
												<tr>
													<td>${colaborador.nome} ${colaborador.sobrenome}</td>
													<td>${colaborador.matricula}</td>
													<td>${colaborador.setor}</td>
													<td>${colaborador.cargo}</td>
													
													<td style="text-align: center;" class="td-actions">
														<a href="colaborador?acao=visualizar&id=${colaborador.id}">
	                                                    <button type="button" rel="tooltip" title="Editar" class="btn btn-info btn-simple btn-sm">
	                                                        <i class="fa fa-edit"></i>
	                                                    </button>
	                                                    </a>
	                                                    <a href="colaborador?acao=excluir&id=${colaborador.id}">
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
<c:import url="common/rodape.jsp" />
		</div>
	</div>
</body>
</html>