<%@ taglib uri="WEB-INF/mytags.tld" prefix="fiec" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib uri="WEB-INF/mytags.tld" prefix="fiec" %>

<fiec:armazenamento />

<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Treinamento Indaiatuba Abril 2021</title>
    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/utilizando-bootstrap.css">
</head>

<body>
    <c:set var="quantidadeDeAlunos" value="${fn:length(alunos)}" />
    
    <nav id="cabecalho">
        <a href="#conteudo" class="links" id="link1">CONTEÚDO</a>
        <center>
            <a href="#cadastrar" class="links" id="link2">CADASTRAR</a>
        </center>
         
        <c:if test="${quantidadeDeAlunos > 0}">
            <a href="#lista" class="links" id="link3">LISTA DE ALUNOS</a>         
        </c:if>

        
    </nav>

    <header>
        <h1 id="titulo">Treinamento Indaiatuba Abril 2021</h1>
    </header>

    <section id="banner">
        <img src="https://i.picsum.photos/id/210/1600/350.jpg?hmac=u5C8ihcdKxZE0rfrOYEZtcZAtuGdQGFflz4x4n9dFDA" alt=""
            id="imagem">
    </section>

    <section id="conteudo">
        <div class="my-container">
            <h2 id="basico">Utilizando Bootstrap</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                non
                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <p>
            <ul>
                <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                    eiusmod</li>
                <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                    eiusmod</li>
                <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                    eiusmod</li>
                <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                    eiusmod</li>
                <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                    eiusmod</li>
            </ul>
            </p>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                non
                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                non
                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
        </div>
    </section>

    <section id="cadastrar">
        <div class="my-container">
            <h2>Cadastro de Aluno</h2>
            <form class="needs-validation" action="index.jsp">
                <div class="container">
                        <label>Nome completo*</label>
                        <input type="text" id="nome" class="form-control" name="nome" onclick="style.outline = null" required>
                        <div class="invalid-feedback">
                            Prencha este campo por favor!
                        </div>

                        <div class="row">
                                <div class="col-md-6">
                                    <label>CPF*</label>
                                    <input type="text" id="cpf" class="form-control" name="cpf" onclick="style.outline = null" required>
                                    <div class="invalid-feedback">
                                        Prencha este campo por favor!
                                    </div>
                                </div>
                            <div class="col-md-4">
                                <label id="labelNascimento">Nascimento*</label>
                                <input type="text" id="data" class="form-control" name="nasc" onclick="style.outline = null" required placeholder="dd/mm/aaaa">
                                <div class="invalid-feedback">
                                    Prencha este campo por favor!
                                </div>
                            </div>
                            <div class="form-group col-md-2">
                                <label>Sexo*</label>
                                <select id="sexo" class="form-control" name="sexo" onclick="style.outline = null" required>
                                    <option value="">Selecione</option>
                                    <option value="Masculino">Masculino</option>
                                    <option value="Feminino">Feminino</option>
                                </select>
                                <div class="invalid-feedback">
                                    Prencha este campo!
                                </div>
                            </div>
                        </div>
                    
                        <div class="row">
                            <div class="col-md-6">
                                <label>Email*</label>
                                <input type="email" id="email" class="form-control" name="mail" onclick="style.outline = null" required>
                                <div class="invalid-feedback">
                                    Prencha este campo por favor!
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Celular*</label>
                                <input type="text" id="celular" class="form-control" name="cel" onclick="style.outline = null" required>
                                <div class="invalid-feedback">
                                    Prencha este campo por favor!
                                </div>
                            </div>
                        </div>
                
                <hr id="linha">
                        <div class="row">
                            <div class="col-md-6">
                                <label>Nível*</label>
                                <select id="nivel" class="form-control" name="nivel" onclick="style.outline = null" required>
                                    <option value="">Selecione</option>
                                    <option value="novato">Novato</option>
                                    <option value="formado">Formado</option>
                                    <option value="veterano">Veterano</option>
                                </select>
                                <div class="invalid-feedback">
                                    Prencha este campo por favor!
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Média*</label>
                                <input type="text" id="media" class="form-control" name="media" onclick="style.outline = null" required>
                                <div class="invalid-feedback">
                                    Prencha este campo por favor!
                                </div>
                            </div>
                        </div>
                    
                </div>
                <hr>
                <p id="obrigatorio">
                    * Campo obrigatório
                </p>
                <hr>
                <button id="btncadastro" class="btn btn-dark" type="submit" onclick="return validar()">Cadastrar</button>
            </form>
        </div>
    </section>

    <c:if test="${quantidadeDeAlunos > 0}">
       <section id="lista">
        <div class="my-container" id="container3">
            <h2>Lista de alunos</h2>
            <table id="tabela" class="table table-striped">
                <thead>
                    <tr>
                        <th class="titulos">Nome completo</th>
                        <th class="titulos">CPF</th>
                        <th class="titulos">Nascimento</th>
                        <th class="titulos">Sexo</th>
                        <th class="titulos">Email</th>
                        <th class="titulos">Celular</th>
                        <th class="titulos">Nivel</th>
                        <th class="titulos">Média</th>
                    </tr>
                </thead>
                <tbody>
		    
		    <c:forEach items="${alunos}" var="aluno">
			<tr>
                           <td><c:out value="${aluno.nome}"/></td>
                           <td><c:out value="${aluno.cpf}"/></td>
                           <td><fmt:formatDate value="${aluno.dataDeNascimento}" pattern="dd/MM/yyyy"/></td>
                           <td><c:out value="${aluno.sexo}"/></td>
                           <td><c:out value="${aluno.email}"/></td>
                           <td><c:out value="${aluno.celular}"/></td>
                           <td><c:out value="${aluno.nivel}"/></td>
			   <c:choose>
			       <c:when test="${aluno.media >= 7}">
                           	     <td class="bg-success text-white"><c:out value="${aluno.media}"/></td>			       
			       </c:when>
			       <c:otherwise>
                                     <td class="bg-danger text-white"><c:out value="${aluno.media}"/></td>
			       </c:otherwise>
			   </c:choose>
                    </tr>
  		    </c:forEach>
                </tbody>
            </table>
        </div>
        
        
        <c:if test="${aluno.media >= 7 }">
        <div class="my-container" id="container4">
        	<h2>Lista de aprovados</h2>
            <table id="tabela2" class="table table-striped">
                <thead>
                    <tr>
                        <th class="titulos">Nome completo</th>
                        <th class="titulos">CPF</th>
                        <th class="titulos">Nascimento</th>
                        <th class="titulos">Sexo</th>
                        <th class="titulos">Email</th>
                        <th class="titulos">Celular</th>
                        <th class="titulos">Nivel</th>
                        <th class="titulos">Média</th>
                    </tr>
                </thead>
                <tbody>
		    
		    <c:forEach items="${alunos}" var="aluno">
			<tr>
                           
										<td><c:out value="${aluno.nome}" /></td>
									
										<td><c:out value="${aluno.cpf}" /></td>
									
										<td><fmt:formatDate value="${aluno.dataDeNascimento}"
												pattern="dd/MM/yyyy" /></td>
									
										<td><c:out value="${aluno.sexo}" /></td>
									
										<td><c:out value="${aluno.email}" /></td>
									
										<td><c:out value="${aluno.celular}" /></td>
									
										<td><c:out value="${aluno.nivel}" /></td>
									
										<td class="bg-success text-white"><c:out
												value="${aluno.media}" /></td>
									
                    </tr>
  		    </c:forEach>
                </tbody>
            </table>
        </div>
        </c:if>
        
        
        <c:if test="${aluno.media < 7 }">
        <div class="my-container" id="container5">
        	<h2>Lista de reprovados</h2>
            <table id="tabela3" class="table table-striped">
                <thead>
                    <tr>
                        <th class="titulos">Nome completo</th>
                        <th class="titulos">CPF</th>
                        <th class="titulos">Nascimento</th>
                        <th class="titulos">Sexo</th>
                        <th class="titulos">Email</th>
                        <th class="titulos">Celular</th>
                        <th class="titulos">Nivel</th>
                        <th class="titulos">Média</th>
                    </tr>
                </thead>
                <tbody>
		    
		    <c:forEach items="${alunos}" var="aluno">
			<tr>
                           
										<td><c:out value="${aluno.nome}" /></td>
									
										<td><c:out value="${aluno.cpf}" /></td>
									
										<td><fmt:formatDate value="${aluno.dataDeNascimento}"
												pattern="dd/MM/yyyy" /></td>
									
										<td><c:out value="${aluno.sexo}" /></td>
									
										<td><c:out value="${aluno.email}" /></td>
									
										<td><c:out value="${aluno.celular}" /></td>
									
										<td><c:out value="${aluno.nivel}" /></td>
									
										<td class="bg-danger text-white"><c:out
												value="${aluno.media}" /></td>
									
                    </tr>
  		    </c:forEach>
                </tbody>
            </table>
        </div>
        </c:if>
    </section>         
    </c:if>
    
    <footer>
       <p id="copy">Copyright 2021 | VILT GROUP</p>
    </footer>

    <!-- js -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/utilizando-boostrap.js"></script>
</body>

</html>