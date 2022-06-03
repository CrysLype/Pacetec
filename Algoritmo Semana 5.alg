algoritmo "Algoritmo semana 5"
// Graças a "luz" que o Prof Jonathan nos deu consegui deixar tudo funcionando   :D
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
      escreval("Escolha Conversão")
      escreval(" 1- Celsius para Fahrenheit ")
      escreval(" 2- Fahrenheit para Celsius")
      leia(OpcaoTemperatura)
      limpatela
      se OpcaoTemperatura = 1 entao
         para i de 1 ate 4 faca
            escreval("Digite a Temaperatura Cº")
            leia (TCelsius [i])
            escreval("Digite a Hora")
            leia (HoraConversao [i])
            TCel <- (TCelsius [i])
            escreval(ConverterParaFahrenheit(TCel))
            limpatela
            escreval("A temperatura em Fahrenheit é:",Resultado:1:1, "ºF")
            escreval("")
            Conversoes[i] <- Resultado
         fimpara
         limpatela
      senao
         para i de 1 ate 4 faca
            escreval("Digite a Temaperatura Fº")
            leia (TFahrenheit [i])
            escreval("Digite a Hora")
            leia (HoraConversao [i])
            TFah <- (TFahrenheit [i])
            escreval(ConverterParaCelsius(TFah))
            limpatela
            escreval("A temperatura em Celsius é:",Resultado:1:1, "ºC")
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
            escreval ("Temperatura de ",TCelsius[i], "ºC", " Registrado às ",HoraConversao[i], " Hs", " Corresponde a", Conversoes[i], "ºF")
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
            escreval ("Temperatura de ",TFahrenheit[i], "ºF", " Registrado às ",HoraConversao[i], " Hs", " Corresponde a", Conversoes[i], "ºC")
            escreval ("")
         fimpara
      fimse
   caso 3
      escreval("Escolha a Conversão")
      escreval(" 1-Real para Dólar")
      escreval(" 2-Dólar para Real")
      leia (OpcaoCotacao)
      limpatela
      escreval(" Escreva cotação do Dólar hoje ")
      leia (Cotacao)
      se OpcaoCotacao = 1 entao
         escreval("Quantos Reais você tem ?")
         leia (Reais)
         Dolar <- Reais / Cotacao
         escreval("Então você tem ","U$", Dolar:1:2)
         escreval("")
      senao
         se OpcaoCotacao = 2 entao
            escreval("Quantos Dólares você tem ?")
            leia (Dolar)
            Reais <- Dolar * Cotacao
            escreval("Então você tem ","R$",  Reais:1:2)
            escreval("")
         fimse
      fimse
      caso 4
      escreval("")
      outrocaso
      escreval("Informação inválida. Tente novamente: ")
   fimescolha
   ate OpcaoMenu = 4
fimalgoritmo

