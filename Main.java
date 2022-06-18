
package MissaSemana7;

import java.util.Scanner;
public class Main{

    public static void main(String[] args) {
  
     Empregado novo1 = new Empregado ("", "", 0f);
     Empregado novo2 = new Empregado ("", "", 0f);
         
         Scanner leitor = new Scanner(System.in);
     System.out.println("Informe o Nome: ");
     novo1.setNome(leitor.next());
     System.out.println("Informe Sobrenome: ");
     novo1.setSobrenome(leitor.next());
     System.out.println("Informe Salario Atua: ");
     novo1.setSalarioMensal(leitor.nextFloat());
     
     System.out.println("Informe o Nome: ");
     novo2.setNome(leitor.next());
     System.out.println("Informe Sobrenome: ");
     novo2.setSobrenome(leitor.next());
     System.out.println("Informe Salario Atua: ");
     novo2.setSalarioMensal(leitor.nextFloat());
     
     
     System.out.println("Nome do Empregado: " + novo1.getNome() + " " +
     novo1.getSobrenome());
     System.out.println("Salário  Anual: " + "R$" + novo1.salarioAnual());
     System.out.println("Salário Anual apos aumento de 10%: " + "R$" 
     + novo1.aumento());
     
     System.out.println("Nome do Empregado: " + novo2.getNome() +  " " + 
     novo2.getSobrenome());
     System.out.println("Salário  Anual: " + "R$" + novo2.salarioAnual()); 
     System.out.println("Salário Anual apos aumento de 10%: " + "R$" 
     + novo2.aumento());
     
     
    }
    
}
