
package beans;

/**
 *
 * @author francisco.nsjunior1
 */

public class Consulta {
    private int cliente_id;
    private String medico;
    private String data;
    private String especialidade;
    
    public int getCliente_id() {
        return cliente_id;
    }
    
    public void setCliente_id(int cliente_id) {
        this.cliente_id = cliente_id;
    }
    
    public String getMedico() {
        return medico;
    }
    
    public void setMedico(String medico) {
        this.medico = medico;
    }
    
    public String getData() {
        return data;
    }
    
    public void setData(String data) {
        this.data = data;
    }
    
    public String getEspecialidade() {
        return especialidade;
    }
    
    public void setEspecialidade(String especialidade) {
        this.especialidade = especialidade;
    }
}
