programa
{
	//Leia uma matriz 10 x 10 e escreva a localização (linha e a coluna) do maior valor.
	inclua biblioteca Util
	funcao inicio()
	{
		inteiro i, j, maior = 0, mat[10][10], li=0, co=0

		para (i=0; i<10; i++){
			para (j=0; j<10; j++){
				mat[i][j] = Util.sorteia(0, 50)
				escreva (mat[i][j],"\t")
				se (mat[i][j] > maior){
					maior = mat[i][j]
					li = i
					co = j
				}
			}
			escreva ("\n")
		}
		escreva ("\n\n O maior numero e:", maior)
		escreva ("\n Sua linha e: (", li, ")")
		escreva ("\n Sua coluna e: (", co, ")")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 542; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */