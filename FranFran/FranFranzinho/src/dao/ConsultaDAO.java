
package dao;

import beans.Consulta;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author francisco.nsjunior1
 */

public class ConsultaDAO {
    private Conexao conexao;
    private Connection conn;
    
    public ConsultaDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
    
    public void inserir(Consulta consulta){
        String sql = "INSERT INTO consulta (medico, data, especialidade) VALUES (?,?,?) ";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, consulta.getMedico());
            stmt.setString(2, consulta.getData());
            stmt.setString(3, consulta.getEspecialidade());
            stmt.execute();
        }catch (Exception e){
            System.out.println("Erro ao inserir consulta: "+ e.getMessage());
        }
    }
    
    public void alterar(Consulta consulta){
        String sql = "UPDATE consulta SET medico=?, data=?, especialidade=? WHERE cliente_id=?";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, consulta.getMedico());
            stmt.setString(2, consulta.getData());
            stmt.setString(3, consulta.getEspecialidade());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao atualizar cliente: "+ e.getMessage());
        }
    }
    
    public void excluir(int cliente_id){
        String sql = "DELETE FROM consulta WHERE cliente_id = ?";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, cliente_id);
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao excluir consulta: "+ e.getMessage());
        }
    }
    
    public Consulta getConsulta(int cliente_id){
        String sql = "SELECT * FROM consulta WHERE cliente_id =?";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, cliente_id);
            ResultSet rs = stmt.executeQuery();
            Consulta consulta = new Consulta();
            rs.next();
            consulta.setCliente_id(rs.getInt("cliente_id"));
            consulta.setMedico(rs.getString("medico"));
            consulta.setData(rs.getString("data"));
            consulta.setEspecialidade(rs.getString("especialidade"));
            return consulta;
            
        }catch(Exception e){
            System.out.println("Erro ao atualizar consulta: "+ e.getMessage());
            return null;
        }
    }
    
    public List<Consulta> getConsulta(){
        String sql = "SELECT * FROM consulta";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<Consulta> listaConsulta = new ArrayList<>();
            while(rs.next()){
                Consulta p = new Consulta();
                p.setCliente_id(rs.getInt("cliente_id"));
                p.setMedico(rs.getString("medico"));
                p.setData(rs.getString("data"));
                p.setEspecialidade(rs.getString("especialidade"));
                listaConsulta.add(p);
            }
            return listaConsulta;
        }catch(Exception e){
            return null;
        }
    }
}
