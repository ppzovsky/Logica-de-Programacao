programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, n3, x

		escreva("Digite um numero \n")
		leia (n1)
		escreva("Digite um numero \n")
		leia (n2)
		escreva("Digite um numero \n")
		leia (n3)

		
		se(n1>n2){
			x = n1
			n1 = n2
			n2 = x

		}
		se(n1>n3) {
			x = n1
			n1 = n3
			n3 = x 
		}
		se (n2>n3) {
			x = n2
			n2 = n3 
			n3 = x 
		}

		escreva (n1 , n2, n3)
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 381; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */