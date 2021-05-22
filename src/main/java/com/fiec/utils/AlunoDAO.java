package com.fiec.utils;

import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.fiec.entidades.Aluno;
import com.fiec.utils.BD;

public class AlunoDAO {

	
		private BD bd;
		private Aluno aluno;
		private String men,sql;
		
		public AlunoDAO() {
			bd = new BD();
		}
		
		/**
		 * Retorna uma lista de produtos a partir de uma instrução em SQL
		 * @param sql - a instrução a ser executada
		 * @param descricao - Um parametro usado como filtro na descrição do produto
		 * @return - a lista contendo todos os produtos
		 */
		public List<Aluno> pegaAlunos(String sql){
			List<Aluno> lista = new ArrayList<Aluno>();
			//Preencher a lista a partir do BD
			bd.getConnection();
			try {
				bd.st = bd.con.prepareStatement(sql);//select * from produtos where media ?
				//bd.st.setDouble(1, media);
				bd.rs = bd.st.executeQuery();
				while(bd.rs.next()) {//Enquanto existir proximo
					//Add os produtos a lista
					aluno = new Aluno();
					aluno.setNome(bd.rs.getString("nome"));
					aluno.setCpf(bd.rs.getInt("cpf"));
					aluno.setSexo(bd.rs.getString("sexo"));
					aluno.setEmail(bd.rs.getString("email"));
					aluno.setCelular(bd.rs.getInt("celular"));
					aluno.setNivel(bd.rs.getString("nivel"));
					aluno.setMedia(bd.rs.getDouble("media"));
					aluno.setDataDeNascimento(bd.rs.getDate("DataNascimento"));
					lista.add(aluno);
					
					
					/*aluno.setCodigo(bd.rs.getInt("codigo"));
					aluno.setDescricao(bd.rs.getString("descricao"));
					aluno.setPreco(bd.rs.getDouble("preco_unitario"));
					aluno.setAtivo(bd.rs.getBoolean("ativo"));
					aluno.setFoto(bd.rs.getString("foto"));*/
					
				}
			}
			catch (SQLException erro) {
				System.out.println("Erro :"+erro);
				lista = null;
			}
			finally {
				
				bd.close();
			}
			return lista;
		}
	
		/**
		 * Metodo para incluir um produto
		 * @param p 
		 * @return 
		 * @throws SQLException 
		 */
		public String cadastrar(Aluno a) throws SQLException {
			sql = "insert into aluno (nome, cpf, sexo, email, celular, nivel, media, dataNascimento)  values (?,?,?,?,?,?,?,?)";
			bd.getConnection();
			try {
				bd.st = bd.con.prepareStatement(sql);
				bd.st.setString(1, a.getNome());
				bd.st.setInt(2, a.getCpf());
				bd.st.setString(3, a.getSexo());
				bd.st.setString(4, a.getEmail());
				bd.st.setInt(5, a.getCelular());
				bd.st.setString(6,  a.getNivel());
				bd.st.setDouble(7, a.getMedia());
				Timestamp sqlData = new Timestamp(a.getDataDeNascimento().getTime());
				bd.st.setTimestamp(8, sqlData);
				men = "Aluno inserido com sucesso!";
			}
			catch (SQLException erro) {
				System.out.println("Erro :"+erro);
				men = "";
			}
			finally {
				bd.st.executeUpdate();
				bd.close();
			}
			return men;
		}

	
	}

	
	

