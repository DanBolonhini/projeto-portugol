algoritmo "escolha"
// Função :
// Autor :Danilo Roberto Bolonhini
// Data : 04/04/2018
// Seção de Declarações
var
n1, n2, n3, resultado, mediaidade, mediaMasc, mediaFemi, x:real                                   //variavel REAL são todos aquela que levam número decimal. Ex: 103.5; 15.6; 20.8
alt, sexo:caractere                                                                             //caractere são aquele que levam letras ou fazem referencia a alguma coisa.
sair, num, idade, i, c, soma, idadetotal, somaM, somaF, feminino, masculino, primo, total, x1,x2 ,x3 ,x4 ,x5 ,x6 ,x7 ,x8:inteiro     //Inteiro são aqueles que levam números "INTEIROS" que nao são "QUEBRADOS"

inicio
limpatela
repita

   escreval ("1. para soma")
   escreval ("2. para subtração")                                //escrevi as escolhas
   escreval ("3. para Divisão")                                  //para o usuario escolher.
   escreval ("4. para Faixa etária")
   escreval ("5. para Números Primos")
   escreval ("6. para Mudança de Base")
   escreval ("7. para Sair")
   escreval ("***Digite o numero referente a sua opção:***")
   leia (alt)                                        // usei a variavel "alt" para ser a alternativa para o usuario.

   limpatela





   se (alt ="1") entao                             //Na alternativa 1 usei as variavei N1 e N2 para representar
      escreval ("Digite um número:")               //os números de 1ª e 2ª escolha do úsuario.
      leia (n1)
      escreval ("Digite outro número:")
      leia (n2)                                    //A variavel RESULTADO para somar o 1o e 2o valor e optei em colocar
      resultado <- (n1 + n2 )                      //dentro de parenteses para que nao houvesse erros.
      escreval ("O valor da soma é:", resultado)   //A variavel que guardara a soma ou qualquer outro valor sempre deverá
   fimse                                           //ser colocada depois da "virgula" para aparecer no "escreval".


   se (alt = "2") entao
      escreval ("Digite um número:")                //Praticamente a mesma coisa do anterior, o que muda é que aqui agora
      leia (n1)                                     //está subtraindo.
      escreval ("Digite outro número:")
      leia (n2)
      resultado <- (n1 - n2)
      escreval ("O valor da subtração é:", resultado)
   fimse



   se (alt = "3") entao
      escreval ("Digite um número:")
      leia (n1)                                        //Mesma coisa do 1 e do 2 praticamente. Aqui ela esta dividindo, e para essa
      escreval ("Digite outro número:")                //equação no portugol usamos o sinal de "/".
      leia (n2)                                        //Sempre que o segundo número da divisao for 0, o número é impossível de se dividir
      se n2 = 0 entao
         escreva ("***IMPOSSÍVEL DIVIDIR***")          //se o valor de n2 que é o segundo número for 0 ele já vai direto para uma mesagem que não da para ser dividido
      senao
         resultado <- (n1/n2)
         escreva ("A Divisão dos números é:", resultado)
      fimse
   fimse

   se (alt = "4") entao
      escreval("Quantas pessoas?:")
      leia (num)
      somaM <- 0              //Essas 3 variaveis estão recebendo 0 porque elas receberão números mais a frente que
      somaF <- 0              //elas precisarão guardar.
      idade <- 0

      para i de 1 ate num passo 1 faca                           //"I" no caso é toda vez que ela repetir a mensagem
         escreval (" Digite a idade e sexo da", i ,"ª pessoa. (M) MASCULINO e (F) FEMININO.")
         leia (idade)
         leia (sexo)

         se(sexo= "f") entao
            feminino <- feminino + 1                            //feminino esté recebendo o feminino e sumando mais um feminino para guardar
            somaF <- somaF + idade                              //soma está recebendo as idades das muilheres para serem guardadas.
            mediaFemi <- somaF / feminino                       //mediaFemi esta recebendo a idade da mulheres dividindo pela quantidade
         senao
            se (sexo = "m") entao
               masculino <- masculino + 1                       //a mesma coisa de antes, só que agora esta acontecendo com o sexo masculino
               somaM <- somaM + idade
               mediaMasc <- somaM / masculino
            fimse
         fimse

         soma <- soma + idade                                  //aqui esta somando as idades de todos e dividindo pela quantidade de pessoas para se ter a média
         mediaidade <- soma / num                              //de idade geral


      fimpara
      escreval ("A mádia de idade de todos juntos é:", mediaidade ," anos")
      escreval ("A média de idade de todas as MULHERES juntas é:", mediaFemi ," anos")       //Aqui está sendo mostrado no programa a média de idade geral, masculino e feminino
      escreval ("A média de idade de todos os HOMENS juntos é:", mediaMasc ," anos")

   fimse

   se (alt = "5") entao
      escreval ("Digite um número para saber todos os números primos de 1 até")
      escreva ("ele, e saber a somatoria deles:")
      leia (num)                                                   //num é o número que o usuario colocou de sua preferência.

      para c de 1 ate num passo 1 faca
         primo <- 0
         para i de 1 ate c faca                                    //variavel "i" e "c" se refere aos contadores
            se (c mod i= 0) entao                                  //Variavel "primo" vai verificar se o número é primo ou não
               primo <- primo + 1                                  //Tendo dois contadores, vamos ter então dois looping. Primiero para o valor vai de 1 até num que é o que o usuario digitou.
            fimse                                                  //looping "de 1 até c" é para verificar os anteriores.
         fimpara                                                   //"c mod i" está verificando se nao tem resto, ou seja, se ele é divisível. Porque se resto for 0 (nessa situação) ele é um número primo.
         se(primo= 2) entao                                        //Varial "primo" esta recebendo primo + 1 para saber se o número é primo. Porque ele só é primo se for dividido por 1 ou por ele mesmo. Valor inicial da varial "primo" é 0.
            escreval (c)                                           //Se "primo = 2" entao escreva a varial "c" que representa os números primos.
            soma<- soma + c                                        //Soma está recebendo ela mesma + c que é os numeros primos. Totalizando a soma de todos o números primos de num.
         fimse
      fimpara
      escreval ("O resultado da soma dos números primeos é:", soma)
   fimse


   se (alt= "6") entao
      escreval ("Escreva a quantidade de caso desejado:")
      leia (num)
      para i de 1 ate num faca
         escreval ("**SE VOCÊ QUER O NÚMERO BINÁRIO 1101, ENTÃO ESCREVA 1 - 0 - 1 - 1.(OS NÚMEROS AO CONTRÁRIO)")
         escreval ("SE O SEU NÚMERO FOR MENOR QUE 8 DIGÍTOS, POR FAVOR ACRECENTAR 0(ZERO) NOS RESTANTES DE NÚMEROS")
         escreval ("###ESSE É O",i,"º CASO###")
         escreval ("No número 1 você tem:")
         leia (x1)
         escreval ("No número 2 você tem:")
         leia (x2)
         escreval ("No número 3 você tem:")
         leia (x3)
         escreval ("No número 4 você tem:")
         leia (x4)
         escreval ("No número 5 você tem:")
         leia (x5)
         escreval ("No número 6 você tem:")
         leia (x6)
         escreval ("No número 7 você tem:")
         leia (x7)
         escreval ("No número 8 você tem:")
         leia (x8)

      fimpara
   fimse

ate (alt = "7") entao                             //usei a estrutura SE/FIMSE em todas as alternativas. de 1 ate a 7
escreval ("Fim do Programa.")                 //por que me pareceu o jeito mais logico de escolha pra esse caso.
fimalgoritmo
