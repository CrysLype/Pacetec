algoritmo "Algoritmo semana 5"
// Gra�as a "luz" que o Prof Jonathan nos deu consegui deixar tudo funcionando   :D
var
OpcaoMenu, OpcaoTemperatura, i, j, OpcaoCotacao  : inteiro
Cotacao, Reais, Dolar : real
TCel,TFah, Resultado, Aux, AuxHora, AuxConversoes : real
TFahrenheit   : vetor [1..4] de real
TCelsius      : vetor [1..4] de real
Conversoes    : vetor [1..4] de real
HoraConversao : vetor [1..4] de real

funcao ConverterParaCelsius(TFah: real) : real                 ]
inicio

TCel <- (TFahrenheit[i] - 32) / 1.8
retorne TCel
Resultado <- TCel
fimfuncao

funcao ConverterParaFahrenheit (TCel: real) : real
inicio

TFah <- (TCelsius[i] * 1.8) + 32
retorne TFah
Resultado <- TFah
fimfuncao

inicio
repita
escreval(" 1- Para Converter Temperatura")
escreval(" 2- Para Ver Relatorio das Temperaturas Convertidas ")
escreval(" 3- Para Converter Moeda ")
escreval(" 4- Para Sair")
leia(OpcaoMenu)
   limpatela
   escolha OpcaoMenu
   caso 1
      escreval("Escolha Convers�o")
      escreval(" 1- Celsius para Fahrenheit ")
      escreval(" 2- Fahrenheit para Celsius")
      leia(OpcaoTemperatura)
      limpatela
      se OpcaoTemperatura = 1 entao
         para i de 1 ate 4 faca
            escreval("Digite a Temaperatura C�")
            leia (TCelsius [i])
            escreval("Digite a Hora")
            leia (HoraConversao [i])
            TCel <- (TCelsius [i])
            escreval(ConverterParaFahrenheit(TCel))
            limpatela
            escreval("A temperatura em Fahrenheit �:",Resultado:1:1, "�F")
            escreval("")
            Conversoes[i] <- Resultado
         fimpara
         limpatela
      senao
         para i de 1 ate 4 faca
            escreval("Digite a Temaperatura F�")
            leia (TFahrenheit [i])
            escreval("Digite a Hora")
            leia (HoraConversao [i])
            TFah <- (TFahrenheit [i])
            escreval(ConverterParaCelsius(TFah))
            limpatela
            escreval("A temperatura em Celsius �:",Resultado:1:1, "�C")
            escreval("")
            Conversoes[i] <- Resultado
         fimpara
      fimse
      limpatela
   caso 2
      se OpcaoTemperatura = 1 entao
         para i de 1 ate 4 faca
            para j de 1 ate 4 faca
               se TCelsius[j] > TCelsius[i] entao
                  Aux <- TCelsius[i]
                  AuxHora <- HoraConversao[i]
                  AuxConversoes <- Conversoes[i]
                  TCelsius[i]<- TCelsius[j]
                  HoraConversao[i] <- HoraConversao[j]
                  Conversoes[i] <- Conversoes[j]
                  TCelsius[j]<- Aux
                  HoraConversao[j] <- AuxHora
                  Conversoes[j] <- AuxConversoes
               fimse
            fimpara
         fimpara
         para i de 1 ate 4 faca
            escreval ("Temperatura de ",TCelsius[i], "�C", " Registrado �s ",HoraConversao[i], " Hs", " Corresponde a", Conversoes[i], "�F")
            escreval ("")
         fimpara
      fimse
      se OpcaoTemperatura = 2 entao
         para i de 1 ate 4 faca
            para j de 1 ate 4 faca
               se TFahrenheit[j] > TFahrenheit[i] entao
                  Aux <- TFahrenheit[i]
                  AuxHora <- HoraConversao[i]
                  AuxConversoes <- Conversoes[i]
                  TFahrenheit[i]<- TFahrenheit[j]
                  HoraConversao[i] <- HoraConversao[j]
                  Conversoes[i] <- Conversoes[j]
                  TFahrenheit[j]<- Aux
                  HoraConversao[j] <- AuxHora
                  Conversoes[j] <- AuxConversoes
               fimse
            fimpara
         fimpara
         para i de 1 ate 4 faca
            escreval ("Temperatura de ",TFahrenheit[i], "�F", " Registrado �s ",HoraConversao[i], " Hs", " Corresponde a", Conversoes[i], "�C")
            escreval ("")
         fimpara
      fimse
   caso 3
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
         escreval("Ent�o voc� tem ","U$", Dolar:1:2)
         escreval("")
      senao
         se OpcaoCotacao = 2 entao
            escreval("Quantos D�lares voc� tem ?")
            leia (Dolar)
            Reais <- Dolar * Cotacao
            escreval("Ent�o voc� tem ","R$",  Reais:1:2)
            escreval("")
         fimse
      fimse
      caso 4
      escreval("")
      outrocaso
      escreval("Informa��o inv�lida. Tente novamente: ")
   fimescolha
   ate OpcaoMenu = 4
fimalgoritmo

