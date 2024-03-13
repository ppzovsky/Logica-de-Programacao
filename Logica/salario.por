programa
{
	
	funcao inicio()
	{
		real valor, hora, salario_brut, ir, inss, fgts, total, salario_liq, sindicato

		escreva ("Qual o valor da ssua hora?\n")
		leia (valor) 
		escreva ("Quantas horas voce trabalha?\n")
		leia (hora) 

		salario_brut = valor * hora

		se (salario_brut <= 900){
			ir = 0.0
			sindicato = salario_brut * 0.03
			inss = salario_brut * 0.1
			fgts = salario_brut * 0.11
			total = sindicato + ir + inss
			salario_liq = salario_brut - total
		}
		senao se (salario_brut >900 e salario_brut <= 1500){
			ir = salario_brut * 0.05
			sindicato = salario_brut * 0.03
			inss = salario_brut * 0.1
			fgts = salario_brut * 0.11
			total = sindicato + ir + inss
			salario_liq = salario_brut - total
		}
		senao se (salario_brut >1500 e salario_brut <= 2500){
			ir = salario_brut * 0.1
			sindicato = salario_brut * 0.03
			inss = salario_brut * 0.1
			fgts = salario_brut * 0.11
			total = sindicato + ir + inss
			salario_liq = salario_brut - total
		}
		senao{
			ir = salario_brut * 0.2
			sindicato = salario_brut * 0.03
			inss = salario_brut * 0.1
			fgts = salario_brut * 0.11
			total = sindicato + ir + inss
			salario_liq = salario_brut - total
		}

		escreva ("Salario bruto (", valor, "*", hora, ") -R$", salario_brut)
		escreva ("\n(-) IR  (", (ir/salario_brut)*100 , "%) -R$", ir)
		escreva ("\n(-) INSS  (", (inss/salario_brut)*100 , "%) -R$", inss)
		escreva ("\n(-) Sindicato  (", (sindicato/salario_brut)*100 , "%) -R$", sindicato)
		escreva ("\nFGTS  (", (fgts/salario_brut)*100 , "%) -R$", fgts)
		escreva ("\nTotal de Descontos -R$", total)
		escreva ("\nSalario Liquido", salario_liq)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1639; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */