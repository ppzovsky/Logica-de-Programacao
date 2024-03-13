programa
{
	
	funcao inicio()
	{
		inteiro fim, inic, x

		escreva("digite um numero")
		leia (inic)
		escreva("digite um numero")
		leia (fim)
		x = inic
		
		para (x; x<=fim; x++){
			
			se((x!=2 e x%2==0) ou (x!=3 e x%3==0) ou (x!=5 e x%5==0) ou (x!=7 e x%7==0)){
				
			}

			senao {
				escreva ("\n", x)
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 92; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */