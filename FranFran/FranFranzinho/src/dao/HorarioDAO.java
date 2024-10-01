
package dao;

import beans.Horario;
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

public class HorarioDAO {
    private Conexao conexao;
    private Connection conn;
    
    public HorarioDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
    
    public void inserir(Horario horario){
        String sql = "INSERT INTO horario (horario) VALUES (?) ";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, horario.getHorario());
            stmt.execute();
        }catch (Exception e){
            System.out.println("Erro ao inserir horario: "+ e.getMessage());
        }
    }
    
    public void alterar(Horario horario){
        String sql = "UPDATE horario SET horario=? WHERE cliente_id_id=?";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, horario.getHorario());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao atualizar horario: "+ e.getMessage());
        }
    }
    
    public void excluir(int cliente_id_id){
        String sql = "DELETE FROM horario WHERE cliente_id_id = ?";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, cliente_id_id);
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao excluir horario: "+ e.getMessage());
        }
    }
    
    public Horario getHorario(int cliente_id_id){
        String sql = "SELECT * FROM horario WHERE cliente_id_id =?";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, cliente_id_id);
            ResultSet rs = stmt.executeQuery();
            Horario horario = new Horario();
            rs.next();
            horario.setCliente_id_id(rs.getInt("cliente_id_id"));
            horario.setHorario(rs.getString("horario"));
            return horario;
            
        }catch(Exception e){
            System.out.println("Erro ao atualizar horario: "+ e.getMessage());
            return null;
        }
    }
    
    public List<Horario> getHorario(){
        String sql = "SELECT * FROM horario";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<Horario> listaHorario = new ArrayList<>();
            while(rs.next()){
                Horario p = new Horario();
                p.setCliente_id_id(rs.getInt("cliente_id_id"));
                p.setHorario(rs.getString("horario"));
                listaHorario.add(p);
            }
            return listaHorario;
        }catch(Exception e){
            return null;
        }
    }
}
