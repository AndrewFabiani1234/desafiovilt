<%@page import="java.util.List"%>
<%@page import="com.fiec.entidades.Aluno"%>
<%@page import="com.fiec.utils.AlunoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib uri="WEB-INF/mytags.tld" prefix="fiec" %>


<!doctype html>
<html lang="pt-br">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <title>Treinamento Indaiatuba Abril 2021 - Utilizando Bootstrap</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/utilizando-bootstrap.css">

  </head>
  <body>
  	<c:set var="quantidadeDeAlunos" value="${fn:length(alunos)}" />
    <c:set var="contemAprovados" value="${false}" />
    <c:set var="contemReprovados" value="${false}" />
    <nav>
      <a href="#conteudo">Conteúdo</a>
      <a href="#cadastrar">Cadastrar</a>
      <c:if test="${quantidadeDeAlunos > 0}">
      	<a href="#lista">Lista de alunos</a>
      </c:if>
    </nav>

    <header>
      <h1>Treinamento Indaiatuba Abril 2021</h1>
    </header>

    <section id="banner">
      <img src="https://i.picsum.photos/id/210/1600/350.jpg?hmac=u5C8ihcdKxZE0rfrOYEZtcZAtuGdQGFflz4x4n9dFDA" alt="">
    </section>

    <section id="conteudo">
      <div class="my-container">
        <h2>Utilizando Bootstrap</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
        <p>
          <ul>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</li>
          </ul>
        </p>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
      </div>
    </section>

    <section id="cadastrar">
      <div class="my-container">
        <h2>Cadastrar</h2>
        <form class="needs-validation" action="index.jsp">
          <div class="mb-3">
            <label for="nome" class="form-label">Nome completo*</label>
            <input type="text" class="form-control" id="nome" name="nome" required>
            <div class="invalid-feedback">
              Nome não informado!
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-sm-6">
              <label for="cpf" class="form-label">CPF*</label>
              <input type="text" class="form-control" id="cpf" name="cpf" required>
              <div class="invalid-feedback">
                CPF não informado!
              </div>
            </div>
            <div class="col-sm">
              <label for="nasc" class="form-label">Data de nascimento*</label>
              <input type="text" class="form-control" id="nasc" name="nascimento" required placeholder="dd/mm/aaaa">
              <div class="invalid-feedback">
                Data de Nascimento não informada!
              </div>
            </div>
            <div class="col-sm">
              <label for="sexo" class="form-label">Sexo*</label>
              <select class="form-select" id="sexo" name="sexo" required>
                <option value=""> </option>
                <option value="Masculino">Masculino</option>
                <option value="Feminino">Feminino</option>
              </select>
              <div class="invalid-feedback">
                Sexo não informado!
              </div>
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-md-6">
              <label for="mail" class="form-label">Email*</label>
              <input type="email" class="form-control" id="mail" name="email" required>
              <div class="invalid-feedback">
                Email não informado!
              </div>
            </div>
            <div class="col-md-6">
              <label for="cel" class="form-label">Celular*</label>
              <input type="text" class="form-control" id="cel" name="celular" required>
              <div class="invalid-feedback">
                Celular não informado!
              </div>
            </div>
          </div>
          <hr>
          <div class="row g-3 mb-3">
            <div class="col-md-6">
              <label for="nivel" class="form-label">Nível*</label>
              <select id="nivel" name="nivel" class="form-select" onclick="style.outline = null" required>
                <option value="">Selecione</option>
                <option value="novato">Novato</option>
                <option value="formado">Formado</option>
                <option value="veterano">Veterano</option>
              </select>
              <div class="invalid-feedback">
                Nível não informado!
              </div>
            </div>
            <div class="col-md-6">
              <label for="media" class="form-label">Média*</label>
              <input type="text" class="form-control" id="media" name="media" required>
              <div class="invalid-feedback">
                Média não informada!
              </div>
            </div>
          </div>
          <hr>
          <p>
            * Campo obrigatório
          </p>
          <hr>
          <button class="btn btn-dark btn-lg" type="submit">Cadastrar</button>
        </form>
      </div>
    </section>

		<section id="lista-aprovados">
	      <div class="my-container">
	        <h2>Lista de Aprovados</h2><br>
	        <table class="table table-striped">
	          <thead>
	            <tr>
	              <th>Nome completo</th>
	              <th>CPF</th>
	              <th>Nascimento</th>
	              <th>Sexo</th>
	              <th>Email</th>
	              <th>Celular</th>
	              <th>Nivel</th>
	              <th>Media</th>
	            </tr>
	          </thead>
	          <tbody>
	          	<!--<c:forEach var="a" items="${aluno}">-->
	          	
	          	<%
	          	
          		AlunoDAO dao = new AlunoDAO();
	          	String sql = "select * from aluno where media < 7";
				List<Aluno> lista = dao.pegaAlunos(sql);
                for(Aluno a:lista){
	
		
	
		out.println("<tr><td>"+a.getNome()+"</td><td>"+a.getCpf()+"</td><td>"+
			a.getDataDeNascimento() + "</td><td>"+a.getSexo()+
				"></td><td>"+ a.getEmail() +"</td><td>"+ a.getCelular() +"</td><td>"+a.getNivel()+"</td><td>"+a.getMedia()+"<tr>");
		
                }
				
		%>
				
				
                 
               
	          	<!--</c:forEach>-->
	          </tbody>
	        </table>
	      </div>
	    </section>



		<section id="lista-reprovados">
	      <div class="my-container">
	        <h2>Lista de Reprovados</h2><br>
	        <table class="table table-striped">
	          <thead>
	            <tr>
	              <th>Nome completo</th>
	              <th>CPF</th>
	              <th>Nascimento</th>
	              <th>Sexo</th>
	              <th>Email</th>
	              <th>Celular</th>
	              <th>Nivel</th>
	              <th>Nota</th>
	            </tr>
	          </thead>
	          <tbody>
	          	<c:forEach var="aluno" items="${alunos}">
                
                  <tr>
                    <td><c:out value="${a.getNome()}" /></td>
                    <td><c:out value="${a.getcpf()}" /></td>
                    <td><fmt:formatDate value="${a.get}" pattern="dd/MM/yyyy"/></td>
                    <td><c:out value="${aluno.sexo}"/></td>
                    <td><c:out value="${aluno.email}"/></td>
                    <td><c:out value="${aluno.celular}"/></td>
                    <td><c:out value="${aluno.nivel}" /></td>
                    <td class="bg-danger text-white"><c:out value="${aluno.media}" /></td>
                  </tr>
                
	          	</c:forEach>
	          </tbody>
	        </table>
	      </div>
	    </section>

    

    <footer>
      Copyright 2021 | VILT GROUP
    </footer>

    <!-- js -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/utilizando-bootstrap.js"></script>

  </body>

</html>