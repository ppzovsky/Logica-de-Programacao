programa
{
	// 3. Leia duas matrizes 4 x 4 e escreva uma terceira com os 4 maiores elementos entre as primeiras.
	inclua biblioteca Util
	funcao inicio()
	{
		inteiro i, j, m1=-1, m2=-1, m3=-1, m4=-1, x, x2, mat1[4][4], mat2[4][4], mat3[2][2]

		escreva ("MATRIZ 1 \n")
		para (i=0; i<4; i++){
			para (j=0; j<4; j++){
				mat1[i][j] = Util.sorteia(0, 30)
				escreva(mat1[i][j], "\t")
				se (mat1[i][j] > m1){
					x = m1
					m1 = mat1[i][j]
					x2 = m2
					m2 = x
					x = m3
					m3 = x2
					m4 = x
				}
				senao se (mat1[i][j] > m2){
					x = m2
					m2 = mat1[i][j]
					x2 = m3
					m3 = x
					m4 = x2
				}
				senao se (mat1[i][j] > m3){
					x = m3
					m3 = mat1[i][j]
					m4 = x
				}
				senao se (mat1[i][j] > m4){
					m4 = mat1[i][j]
				}
			}
			escreva ("\n")
		}
			
		escreva ("\nMATRIZ 2 \n")
		para (i=0; i<4; i++){
			para (j=0; j<4; j++){
				mat2[i][j] = Util.sorteia(0, 30)
				escreva(mat2[i][j], "\t")
				se (mat2[i][j] > m1){
					x = m1
					m1 = mat2[i][j]
					x2 = m2
					m2 = x
					x = m3
					m3 = x2
					m4 = x
				}
				senao se (mat2[i][j] > m2){
					x = m2
					m2 = mat2[i][j]
					x2 = m3
					m3 = x
					m4 = x2
				}
				senao se (mat2[i][j] > m3){
					x = m3
					m3 = mat2[i][j]
					m4 = x
				}
				senao se (mat2[i][j] > m4){
					m4 = mat2[i][j]
				}
			}
			escreva ("\n")
		}

		escreva ("\nMATRIZ 3 \n")
		mat3[0][0] = m1
		mat3[0][1] = m2
		mat3[1][0] = m3
		mat3[1][1] = m4
		para (i=0; i<2; i++){
			para (j=0; j<2; j++){
				escreva(mat3[i][j], "\t")
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
 * @POSICAO-CURSOR = 1211; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {m1, 7, 16, 2}-{m2, 7, 23, 2}-{m3, 7, 30, 2}-{m4, 7, 37, 2}-{x, 7, 44, 1}-{x2, 7, 47, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */