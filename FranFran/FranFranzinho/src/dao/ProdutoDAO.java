
package dao;

import beans.Produto;
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

public class ProdutoDAO {
    private Conexao conexao;
    private Connection conn;
    
    public ProdutoDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
    
    public void inserir(Produto produto){
        String sql = "INSERT INTO cliente (nome, idade, email, cpf) VALUES (?,?,?,?) ";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getIdade());
            stmt.setString(3, produto.getEmail());
            stmt.setString(4, produto.getCpf());
            stmt.execute();
        }catch (Exception e){
            System.out.println("Erro ao inserir cliente: "+ e.getMessage());
        }
    }
    
    public void alterar(Produto produto){
        String sql = "UPDATE cliente SET nome=?, idade=?, email=?, cpf=? WHERE id=?";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getIdade());
            stmt.setString(3, produto.getEmail());
            stmt.setString(4, produto.getCpf());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao atualizar cliente: "+ e.getMessage());
        }
    }
    
    public void excluir(int id){
        String sql = "DELETE FROM cliente WHERE id = ?";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao excluir cliente: "+ e.getMessage());
        }
    }
    
    public Produto getProduto(int id){
        String sql = "SELECT * FROM cliente WHERE id =?";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            Produto produto = new Produto();
            rs.next();
            produto.setId(rs.getInt("id"));
            produto.setNome(rs.getString("nome"));
            produto.setIdade(rs.getInt("idade"));
            produto.setEmail(rs.getString("email"));
            produto.setCpf(rs.getString("cpf"));
            return produto;
            
        }catch(Exception e){
            System.out.println("Erro ao atualizar cliente: "+ e.getMessage());
            return null;
        }
    }
    
    public List<Produto> getProduto(){
        String sql = "SELECT * FROM cliente";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<Produto> listaProduto = new ArrayList<>();
            while(rs.next()){
                Produto p = new Produto();
                p.setId(rs.getInt("id"));
                p.setNome(rs.getString("nome"));
                p.setIdade(rs.getInt("idade"));
                p.setEmail(rs.getString("email"));
                p.setCpf(rs.getString("cpf"));
                listaProduto.add(p);
            }
            return listaProduto;
        }catch(Exception e){
            return null;
        }
    }
}
