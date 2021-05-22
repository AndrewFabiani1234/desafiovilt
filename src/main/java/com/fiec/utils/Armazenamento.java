package com.fiec.utils;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import com.fiec.entidades.Aluno;


public class Armazenamento extends TagSupport {
	
	private void adicionarAluno(Aluno aluno) {
		HttpSession session = pageContext.getSession();
		List<Aluno> alunos = (List<Aluno>) session.getAttribute("alunos");
		
		
		if(alunos == null) {
			alunos = new ArrayList<Aluno>();
		}
		
		alunos.add(aluno);
		
		session.setAttribute("alunos", alunos);
	}
	
	private void carregarListaDeAlunosNaPagina() {
		HttpSession session = pageContext.getSession();
		List<Aluno> alunos = (List<Aluno>) session.getAttribute("alunos");
		pageContext.setAttribute("alunos", alunos);
	}
	
	public int doStartTag() throws JspException {  
	    try{  
	    	ServletRequest request = pageContext.getRequest();
			
			String alunoNome = (String) request.getParameter("nome");
			String alunoCpf = (String) request.getParameter("cpf");
			String alunoEmail = (String) request.getParameter("mail");
			String alunoCelular = (String) request.getParameter("cel");
			String alunoNivel = (String) request.getParameter("nivel");
			String alunoMediaTexto = (String) request.getParameter("media");
			String alunoSexo = (String) request.getParameter("sexo");
			String alunoDataDeNascimentoTexto = (String) request.getParameter("nasc");  
			
			if(alunoNome != null 
					&& alunoCpf != null 
					&& alunoEmail != null 
					&& alunoCelular != null 
					&& alunoNivel != null 
					&& alunoMediaTexto != null 
					&& alunoSexo != null 
					&& alunoDataDeNascimentoTexto != null) {
				Date alunoDataDeNascimento = new SimpleDateFormat("dd/MM/yyyy").parse(alunoDataDeNascimentoTexto);
				Double alunoMedia = Double.parseDouble(alunoMediaTexto);
				Aluno aluno = new Aluno(alunoNome, alunoCpf, alunoDataDeNascimento, alunoSexo, alunoEmail, alunoCelular, alunoNivel, alunoMedia);
				this.adicionarAluno(aluno);
			}
			
			
			this.carregarListaDeAlunosNaPagina();
			
	    }catch(Exception e){
	    	e.printStackTrace();
	    }  
	      
	    return SKIP_BODY;  
	}  

}
