
package AlgoritimoSemana6;

import java.util.Scanner;

public class Main {
    

    public static void main(String[] args) {
        
      Scanner leitor = new Scanner(System.in);
      
      int opcaoMenu, menuMoeda, opcaoTemperatura;
      float real, dolar,cotacao;
      double tempCelsius, tempFahrenheit;
        do{
          System.out.println(" 1- Para Converter Temperatura");
          System.out.println(" 2- Para Converter Moeda ");
          System.out.println(" 3- Para Sair ");
          
            opcaoMenu = leitor.nextInt();
            
            if (opcaoMenu == 1){
                 System.out.println(" 1- Celsius Para Fahrenheit");
                 System.out.println(" 2- Fahrenheit Para Celsius"); 
                 opcaoTemperatura = leitor.nextInt();
                  if (opcaoTemperatura == 1 ){
                   System.out.println("Digite a Temperatura em Celsius ");
                     tempCelsius = leitor.nextFloat();
                     tempFahrenheit = (tempCelsius * 1.8) + 32;
                     System.out.println("A temperatura em Fahrenheit �"
                             + tempFahrenheit + " �F");
                   }else{                   
                     if (opcaoTemperatura == 2)
                       System.out.println("Digite a Temperatura em Fahrenheit");
                        tempFahrenheit = leitor.nextFloat();
                        tempCelsius = (tempFahrenheit  - 32)/1.8;
                        System.out.println("A temperatura em Celsius �"
                                + tempCelsius + " �C");                              
                      }                      
                    }else { 
            if(opcaoMenu == 2){     
             System.out.println(" 1- Real para D�lar");
             System.out.println(" 2- D�lar para Real ");
             menuMoeda = leitor.nextInt();
              if (menuMoeda == 1){
                  System.out.println("Informe o valor da cotacao ");
                   cotacao = leitor.nextFloat();
                    System.out.println("Quantos Reais voc� possui? : ");
                       real = leitor.nextFloat();
                       dolar = real / cotacao;
                       System.out.println("O valor em D�lar �: $ " 
                               + String.format("%.2f", dolar));
              }
              else{
                if (menuMoeda == 2){
                   System.out.println("Informe o valor da cotacao ");
                    cotacao = leitor.nextFloat();
                    System.out.println("Quantos D�lares voc� possui");
                     dolar = leitor.nextFloat();
                     real = dolar * cotacao;
                     System.out.println("O valor em Reais � R$: " 
                             + String.format("%.2f", real));      
                     
                
                }
              
              
              }
               
            }                
              }
            
          }  
        while (opcaoMenu != 3);
    }
    
}

      
    
