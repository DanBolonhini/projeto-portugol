algoritmo "escolha"
// Fun��o :
// Autor :Danilo Roberto Bolonhini
// Data : 04/04/2018
// Se��o de Declara��es
var
n1, n2, n3, resultado, mediaidade, mediaMasc, mediaFemi, x:real                                   //variavel REAL s�o todos aquela que levam n�mero decimal. Ex: 103.5; 15.6; 20.8
alt, sexo:caractere                                                                             //caractere s�o aquele que levam letras ou fazem referencia a alguma coisa.
sair, num, idade, i, c, soma, idadetotal, somaM, somaF, feminino, masculino, primo, total, x1,x2 ,x3 ,x4 ,x5 ,x6 ,x7 ,x8:inteiro     //Inteiro s�o aqueles que levam n�meros "INTEIROS" que nao s�o "QUEBRADOS"

inicio
limpatela
repita

   escreval ("1. para soma")
   escreval ("2. para subtra��o")                                //escrevi as escolhas
   escreval ("3. para Divis�o")                                  //para o usuario escolher.
   escreval ("4. para Faixa et�ria")
   escreval ("5. para N�meros Primos")
   escreval ("6. para Mudan�a de Base")
   escreval ("7. para Sair")
   escreval ("***Digite o numero referente a sua op��o:***")
   leia (alt)                                        // usei a variavel "alt" para ser a alternativa para o usuario.

   limpatela





   se (alt ="1") entao                             //Na alternativa 1 usei as variavei N1 e N2 para representar
      escreval ("Digite um n�mero:")               //os n�meros de 1� e 2� escolha do �suario.
      leia (n1)
      escreval ("Digite outro n�mero:")
      leia (n2)                                    //A variavel RESULTADO para somar o 1o e 2o valor e optei em colocar
      resultado <- (n1 + n2 )                      //dentro de parenteses para que nao houvesse erros.
      escreval ("O valor da soma �:", resultado)   //A variavel que guardara a soma ou qualquer outro valor sempre dever�
   fimse                                           //ser colocada depois da "virgula" para aparecer no "escreval".


   se (alt = "2") entao
      escreval ("Digite um n�mero:")                //Praticamente a mesma coisa do anterior, o que muda � que aqui agora
      leia (n1)                                     //est� subtraindo.
      escreval ("Digite outro n�mero:")
      leia (n2)
      resultado <- (n1 - n2)
      escreval ("O valor da subtra��o �:", resultado)
   fimse



   se (alt = "3") entao
      escreval ("Digite um n�mero:")
      leia (n1)                                        //Mesma coisa do 1 e do 2 praticamente. Aqui ela esta dividindo, e para essa
      escreval ("Digite outro n�mero:")                //equa��o no portugol usamos o sinal de "/".
      leia (n2)                                        //Sempre que o segundo n�mero da divisao for 0, o n�mero � imposs�vel de se dividir
      se n2 = 0 entao
         escreva ("***IMPOSS�VEL DIVIDIR***")          //se o valor de n2 que � o segundo n�mero for 0 ele j� vai direto para uma mesagem que n�o da para ser dividido
      senao
         resultado <- (n1/n2)
         escreva ("A Divis�o dos n�meros �:", resultado)
      fimse
   fimse

   se (alt = "4") entao
      escreval("Quantas pessoas?:")
      leia (num)
      somaM <- 0              //Essas 3 variaveis est�o recebendo 0 porque elas receber�o n�meros mais a frente que
      somaF <- 0              //elas precisar�o guardar.
      idade <- 0

      para i de 1 ate num passo 1 faca                           //"I" no caso � toda vez que ela repetir a mensagem
         escreval (" Digite a idade e sexo da", i ,"� pessoa. (M) MASCULINO e (F) FEMININO.")
         leia (idade)
         leia (sexo)

         se(sexo= "f") entao
            feminino <- feminino + 1                            //feminino est� recebendo o feminino e sumando mais um feminino para guardar
            somaF <- somaF + idade                              //soma est� recebendo as idades das muilheres para serem guardadas.
            mediaFemi <- somaF / feminino                       //mediaFemi esta recebendo a idade da mulheres dividindo pela quantidade
         senao
            se (sexo = "m") entao
               masculino <- masculino + 1                       //a mesma coisa de antes, s� que agora esta acontecendo com o sexo masculino
               somaM <- somaM + idade
               mediaMasc <- somaM / masculino
            fimse
         fimse

         soma <- soma + idade                                  //aqui esta somando as idades de todos e dividindo pela quantidade de pessoas para se ter a m�dia
         mediaidade <- soma / num                              //de idade geral


      fimpara
      escreval ("A m�dia de idade de todos juntos �:", mediaidade ," anos")
      escreval ("A m�dia de idade de todas as MULHERES juntas �:", mediaFemi ," anos")       //Aqui est� sendo mostrado no programa a m�dia de idade geral, masculino e feminino
      escreval ("A m�dia de idade de todos os HOMENS juntos �:", mediaMasc ," anos")

   fimse

   se (alt = "5") entao
      escreval ("Digite um n�mero para saber todos os n�meros primos de 1 at�")
      escreva ("ele, e saber a somatoria deles:")
      leia (num)                                                   //num � o n�mero que o usuario colocou de sua prefer�ncia.

      para c de 1 ate num passo 1 faca
         primo <- 0
         para i de 1 ate c faca                                    //variavel "i" e "c" se refere aos contadores
            se (c mod i= 0) entao                                  //Variavel "primo" vai verificar se o n�mero � primo ou n�o
               primo <- primo + 1                                  //Tendo dois contadores, vamos ter ent�o dois looping. Primiero para o valor vai de 1 at� num que � o que o usuario digitou.
            fimse                                                  //looping "de 1 at� c" � para verificar os anteriores.
         fimpara                                                   //"c mod i" est� verificando se nao tem resto, ou seja, se ele � divis�vel. Porque se resto for 0 (nessa situa��o) ele � um n�mero primo.
         se(primo= 2) entao                                        //Varial "primo" esta recebendo primo + 1 para saber se o n�mero � primo. Porque ele s� � primo se for dividido por 1 ou por ele mesmo. Valor inicial da varial "primo" � 0.
            escreval (c)                                           //Se "primo = 2" entao escreva a varial "c" que representa os n�meros primos.
            soma<- soma + c                                        //Soma est� recebendo ela mesma + c que � os numeros primos. Totalizando a soma de todos o n�meros primos de num.
         fimse
      fimpara
      escreval ("O resultado da soma dos n�meros primeos �:", soma)
   fimse


   se (alt= "6") entao
      escreval ("Escreva a quantidade de caso desejado:")
      leia (num)
      para i de 1 ate num faca
         escreval ("**SE VOC� QUER O N�MERO BIN�RIO 1101, ENT�O ESCREVA 1 - 0 - 1 - 1.(OS N�MEROS AO CONTR�RIO)")
         escreval ("SE O SEU N�MERO FOR MENOR QUE 8 DIG�TOS, POR FAVOR ACRECENTAR 0(ZERO) NOS RESTANTES DE N�MEROS")
         escreval ("###ESSE � O",i,"� CASO###")
         escreval ("No n�mero 1 voc� tem:")
         leia (x1)
         escreval ("No n�mero 2 voc� tem:")
         leia (x2)
         escreval ("No n�mero 3 voc� tem:")
         leia (x3)
         escreval ("No n�mero 4 voc� tem:")
         leia (x4)
         escreval ("No n�mero 5 voc� tem:")
         leia (x5)
         escreval ("No n�mero 6 voc� tem:")
         leia (x6)
         escreval ("No n�mero 7 voc� tem:")
         leia (x7)
         escreval ("No n�mero 8 voc� tem:")
         leia (x8)

      fimpara
   fimse

ate (alt = "7") entao                             //usei a estrutura SE/FIMSE em todas as alternativas. de 1 ate a 7
escreval ("Fim do Programa.")                 //por que me pareceu o jeito mais logico de escolha pra esse caso.
fimalgoritmo
