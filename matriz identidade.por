programa
{
	// 2.  Declare uma matriz 5 x 5. Preencha com 1 a diagonal principal e com 0 os demais elementos. Escreva ao final a matriz obtida.
	inclua biblioteca Util
	funcao inicio()
	{
		inteiro i, j, maior = 0, mat[5][10], li=0, co=0

		para (i=0; i<5; i++){
			para (j=0; j<5; j++){
				se (i == j){
					mat[i][j] = 1
				}
				senao{
					mat[i][j] = 0
				}
				escreva(mat[i][j], "\t")
			}

			escreva ("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 145; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */