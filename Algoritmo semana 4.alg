algoritmo "Conversor Temperatura e Moeda"
var
TCelsius, TFahrenheit, Cotacao, Reais, Dolar :real
OpcaoMenu, Opcaotemperatura, OpcaoCotacao, Sair: inteiro
 
inicio
enquanto Opcaomenu <> 3 faca
 escreval("Escollha a op��o para convers�o")
 escreval(" 1- Para Converter Temperatura")
 escreval(" 2- Para Converter Moeda")
 escreval(" 3- Para Sair")
 leia(OpcaoMenu)
limpatela
  se OpcaoMenu = 1 entao
  escreval("Escolha Convers�o")
  escreval(" 1- Celsius para Fahrenheit ")
  escreval(" 2- Fahrenheit para Celsius")
  leia(OpcaoTemperatura)
limpatela
   se OpcaoTemperatura = 1 entao
   escreval("Digite a Temaperatura C�")
   leia (TCelsius)
   TFahrenheit <- (TCelsius * 1.8) + 32
   escreval("A temperatura em Fahrenheit �:",TFahrenheit:1:1, "�")
  senao
    se OpcaoTemperatura = 2 entao
    escreval("Digite a Temperatura F�")
    leia (TFahrenheit)
    TCelsius <-(TFahrenheit-32)/1.8
    escreval("A temperatura em Celsius �:",TCelsius:1:1, "�")
    fimse
   fimse
 senao
   se OpcaoMenu = 2 entao
   escreval("Escolha a Convers�o")
   escreval(" 1-Real para D�lar")
   escreval(" 2-D�lar para Real")
   leia (OpcaoCotacao)
limpatela
    escreval(" Escreva cota��o do D�lar hoje ")
    leia (Cotacao)
     se OpcaoCotacao = 1 entao
     escreval("Quantos Reais voc� tem ?")
     leia (Reais)
     Dolar <- Reais / Cotacao
    escreval("Voc� tem ","U$", Dolar:1:2)
   senao
     se OpcaoCotacao = 2 entao
     escreval("Quantos D�lares voc� tem ?")
     leia (Dolar)
     Reais <- Dolar * Cotacao
     escreval("Voc� tem ","R$",  Reais:1:2)
     fimse
    fimse
   fimse
  fimse
fimenquanto
fimalgoritmo
