algoritmo "Cnversor"
// Fun��o : Conversor de Temperatura F� para C�
// Autor  : Crysthyan
// Data   : 17/05/2022
// Se��o de Declara��es 
var
 C,F:real
inicio
escreva ("Digite a temperatura em F�")
leia (F)
C<-(F-32)/1.8
escreva ("A temperatura em Celsius �:",C:1:1)
se (C<=15) entao
escreva("� Est� Frio")
fimse
se(C>15) e (C<=28) entao
escreva ("� A temperatura esta agradavel")
fimse
se (C>28) entao
escreva ("� Est� calor")
fimse
fimalgoritmo
