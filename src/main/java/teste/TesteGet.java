package teste;

import java.sql.SQLException;
import java.util.List;

import com.fiec.entidades.Aluno;
import com.fiec.utils.AlunoDAO;
import com.fiec.utils.Data;


public class TesteGet {

	public static void main(String[] args) throws SQLException {
	
		
		AlunoDAO dao = new AlunoDAO();
		List<Aluno> lista = dao.pegaAlunos("select * from aluno where media > 6.0");
		
		Aluno a = new Aluno();
		a.setNome("gustavo");
		a.setCpf(8544466);
		a.setCelular(98713130);
		a.setEmail("gustavo@gustavo");
		a.setMedia(5.0);
		a.setNivel("Novato");
		a.setSexo("masculino");
		a.setDataDeNascimento(Data.strToDate("06/01/2000"));
		
		//System.out.println(dao.pegaAlunos(sql));
		System.out.println(dao.cadastrar(a));
		//System.out.println(a);
		
		for(Aluno a1:lista) {
			System.out.println(a1);
		}
		
		
	}

}
