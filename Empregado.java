
package MissaSemana7;


public class Empregado {
   private String nome, sobrenome;
   private float salarioMensal;

    public Empregado(String nome, String sobrenome, float salarioMensal) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.salarioMensal = salarioMensal;
    }
    
    public double salarioAnual (){
        return salarioMensal * 12;
    }
    
    public double aumento(){
        return (salarioMensal * 1.1) * 12;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public float getSalarioMensal() {
        return salarioMensal;
    }

    public void setSalarioMensal(float salarioMensal) {
      if (salarioMensal < 0){
        this.salarioMensal = 0;
        }else{
            this.salarioMensal = salarioMensal;
        }
    }
    
    
}
