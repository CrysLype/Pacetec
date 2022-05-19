algoritmo "Cnversor"
// Função : Conversor de Temperatura Fº para Cº
// Autor  : Crysthyan
// Data   : 17/05/2022
// Seção de Declarações 
var
 C,F:real
inicio
escreva ("Digite a temperatura em Fº")
leia (F)
C<-(F-32)/1.8
escreva ("A temperatura em Celsius é:",C:1:1)
se (C<=15) entao
escreva("º Está Frio")
fimse
se(C>15) e (C<=28) entao
escreva ("º A temperatura esta agradavel")
fimse
se (C>28) entao
escreva ("º Está calor")
fimse
fimalgoritmo
