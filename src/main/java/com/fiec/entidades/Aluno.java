package com.fiec.entidades;

import java.io.Serializable;
import java.util.Date;

public class Aluno implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String nome, nivel, email, sexo;
	private Date dataDeNascimento;
	private int celular, cpf;
	private double media;
	
	public Aluno() {
		
	}
	

	public Aluno(String nome, String nivel, String email, String sexo, Date dataDeNascimento, int celular, int cpf,
			Double media) {
		super();
		this.nome = nome;
		this.nivel = nivel;
		this.email = email;
		this.sexo = sexo;
		this.dataDeNascimento = dataDeNascimento;
		this.celular = celular;
		this.cpf = cpf;
		this.media = media;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNivel() {
		return nivel;
	}

	public void setNivel(String nivel) {
		this.nivel = nivel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public Date getDataDeNascimento() {
		return dataDeNascimento;
	}

	public void setDataDeNascimento(Date dataDeNascimento) {
		this.dataDeNascimento = dataDeNascimento;
	}

	public int getCelular() {
		return celular;
	}

	public void setCelular(int celular) {
		this.celular = celular;
	}

	public int getCpf() {
		return cpf;
	}

	public void setCpf(int cpf) {
		this.cpf = cpf;
	}

	public Double getMedia() {
		return media;
	}

	public void setMedia(Double media) {
		this.media = media;
	}
	
	public String toString() {
		return nome+";"+cpf+";"+sexo+";"+email+";"+ celular+";"+nivel+";"+media+";"+dataDeNascimento;
	}
	
	/*public Aluno() {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.dataDeNascimento = dataDeNascimento;
		this.sexo = sexo;
		this.email = email;
		this.celular = celular;
		this.nivel = nivel;
		this.media = media;
	}*/

	
	
}
