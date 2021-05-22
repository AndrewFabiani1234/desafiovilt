<%@page import="com.fiec.utils.Data"%>
<%@page import="com.fiec.utils.AlunoDAO"%>
<%@page import="com.fiec.entidades.Aluno"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

AlunoDAO dao = new AlunoDAO();
Aluno a = new Aluno();
a.setNome(request.getParameter("nome"));
a.setCpf(Integer.parseInt(request.getParameter("")));
a.setCelular(Integer.parseInt(request.getParameter("celular")));
a.setEmail(request.getParameter("email"));
a.setMedia(Double.parseDouble(request.getParameter("email")));
a.setNivel(request.getParameter("email"));
a.setSexo(request.getParameter("email"));
a.setDataDeNascimento(Data.strToDate(request.getParameter("email")));



%>


</body>
</html>