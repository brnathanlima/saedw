<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="pt-br">
<head>
	<title>SAEDW - Projetos</title>
	<c:import url="/common/cabecalho.jsp" />
</head>
<body>
	<div class="wrapper">
		<c:choose>
			<c:when test="${tipoDeUsuario == 'gerente'}">
				<div class="sidebar" data-color="orange" data-image="assets/img/sidebar-4.jpg">
	    
			    	<div class="sidebar-wrapper">
			            <div class="logo">
			                <a href="gerente?acao=visualizarPainel" class="simple-text">
			                    SAEDW
			                </a>
			            </div>
			
			            <ul class="nav">
			                <li>
			                    <a href="solicitacaoDeDesenvolvimento?acao=listar">
			                   		<i class="pe-7s-bell"></i>
			                        <p>Solicita��es de Desenvolvimento</p>
			                    </a>
			                </li>
			                <li class="active">
			                    <a href="projeto?acao=listar">
			                    	<i class="pe-7s-network"></i>
			                        <p>Projetos</p>
			                    </a>
			                </li>
			            </ul>
			    	</div>
			    </div>
			</c:when>
	    	<c:when test="${tipoDeUsuario == 'webDesigner'}">
	    		<div class="sidebar" data-color="red" data-image="assets/img/sidebar-4.jpg">
	    
			    	<div class="sidebar-wrapper">
			            <div class="logo">
			                <a href="webDesigner?acao=visualizarPainel" class="simple-text">
			                    SAEDW
			                </a>
			            </div>
			
			            <ul class="nav">
			                <li>
			                    <a href="categoriaDeWebsites?acao=listar">
			                   		<i class="pe-7s-folder"></i>
			                        <p>Categorias de Websites</p>
			                    </a>
			                </li>
			                <li>
			                    <a href="estruturaDeWebsites?acao=listar">
			                    	<i class="pe-7s-browser"></i>
			                        <p>Estruturas de Websites</p>
			                    </a>
			                </li>
			                <li>
			                    <a href="solicitacaoDeDesenvolvimento?acao=listar">
			                    	<i class="pe-7s-bell"></i>
			                        <p>Solicitacoes de Desenvolvimento</p>
			                    </a>
					        </li>
							<li class="active">
								<a href="projeto?acao=listar"> 
									<i class="pe-7s-network"></i>
									<p>Projetos</p>
								</a>
							</li>
			            </ul>
			    	</div>
			    </div>
	    	</c:when>
	    </c:choose>

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
	                                <h4 class="title">PROJETOS
	                                <c:choose>
	                                	<c:when test="${tipoDeUsuario == 'gerente' && usuario.departamento == 'TI'}">
	                                	<a href="projeto?acao=novoCadastro" class="btn btn-success pull-right" role="button">NOVO PROJETO</a>
	                                	</c:when>
	                                </c:choose>
	                                </h4>
	                            </div>
	                            <div class="content table-responsive table-full-width">
	                            	<c:choose>
										<c:when test="${ not empty successMessage }">
											<div class="alert alert-success" role="alert">
												<span><b>Sucesso - </b> ${successMessage} </span>
											</div>											
										</c:when>
									</c:choose>
	                                <table class="table table-hover table-striped">
	                                    <thead>
	                                    	<tr>
		                                    	<th>T�tulo</th>
												<th>Status</th>
												<th>Data de Cria��o</th>
												<th style="text-align: center;">A��es</th>
	                                    	</tr>
	                                    </thead>
	                                    <tbody>
	                                    	<c:forEach var="projeto" items="${projetos}" varStatus="id">
												<tr>
													<td>${projeto.titulo}</td>
													<td>${projeto.status}</td>
													<td><fmt:formatDate value="${projeto.dataDeCriacao}" pattern="dd/MM/yyyy"/></td>
													<c:choose>
														<c:when test="${tipoDeUsuario == 'gerente' && usuario.departamento == 'TI' && projeto.status == 'Novo'}">
															<td style="text-align: center;" class="td-actions">
																<a href="projeto?acao=visualizar&id=${projeto.id}">
				                                                   <button type="button" rel="tooltip" title="Editar" class="btn btn-info btn-simple btn-sm">
				                                                       <i class="fa fa-edit"></i>
				                                                   </button>
				                                                   </a>
				                                                   <a href="projeto?acao=excluir&id=${projeto.id}">
				                                                   <button type="button" rel="tooltip" title="Excluir" class="btn btn-danger btn-simple btn-sm">
				                                                       <i class="fa fa-times"></i>
				                                                   </button>
				                                                   </a>
				                                               </td>
														</c:when>
														<c:otherwise>
															<td style="text-align: center;" class="td-actions">
																<a href="projeto?acao=visualizar&id=${projeto.id}">
				                                                   <button type="button" rel="tooltip" title="Visualizar" class="btn btn-info btn-simple btn-sm">
				                                                       <i class="fa fa-eye"></i>
				                                                   </button>
				                                           		</a>
				                                        	</td>
														</c:otherwise>
													</c:choose>
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