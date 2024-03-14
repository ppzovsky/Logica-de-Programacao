programa
{
	
	inclua biblioteca Tipos
	inclua biblioteca Util
	inclua biblioteca Matematica

	funcao menu()
	{
		escreva("Lista de alunos da escola.")
		escreva("\n\n1 - Cadastrar aluno")
		escreva("\n2 - Média da turma")
		escreva("\n3 - Situação do aluno")
		escreva("\n4 - Exibição de alunos")
		escreva("\n5 - Editar alunos")
		escreva("\n6 - Mural de aniversariantes")
		escreva("\n7 - Finalizar sistema")
		escreva("\n\nEscolha uma opção: ")		
	}
	funcao contador(inteiro turma,cadeia tabelaAlunos[][])
	{

				inteiro linhas=Util.numero_linhas(tabelaAlunos)				
				real mediaturma=0.0
				inteiro contadorturma=0
				

				para (inteiro i=0; i < linhas; i++)
					{
						cadeia turmacaracter=Tipos.inteiro_para_cadeia(turma,10)
						
						se (turmacaracter==tabelaAlunos[i][2])
						{
						real turmanota = Tipos.cadeia_para_real(tabelaAlunos[i][6])
						contadorturma = contadorturma+1
						mediaturma = mediaturma+turmanota
						}				
					}
				
				mediaturma = mediaturma / contadorturma
					
				escreva("\n\nNumero de alunos no " + turma + "° ano: " + contadorturma + " alunos.\n")
					
				se (mediaturma==10)
					{
					escreva ("A turma está de PARABÉNS a média é "+ mediaturma +". Excelente!!!\n\n")
					}
				
				senao se(mediaturma<10 e mediaturma> 8)
					{
					escreva("A média da turma está boa com "+ mediaturma +" de nota!!\n\n")
					}
				
				senao se(mediaturma<8 e mediaturma>6)
					{
					escreva("A turma está na média, com nota de "+ mediaturma +".\n\n")
					}
				
				senao se(mediaturma<6 e mediaturma>0)
					{
					escreva("A media da turma é "+ mediaturma +", média está ruim.\n\n")
					}				
	}
	funcao mediaTurmaCompleta(cadeia tabelaAlunos[][])
		{
		
			limpa()
			escreva("Média da Turma")
			Util.aguarde(2000)
			limpa()
			
			inteiro turma = 0
			escreva ("Digite o numero da turma: ")
			leia(turma)
			
			escolha(turma)
			{	
				caso 1:
				contador(turma,tabelaAlunos)
				Util.aguarde(1000)
				pare
				
				caso 2:
				contador(turma,tabelaAlunos)
				pare
				
				caso 3:
				contador(turma,tabelaAlunos)
				Util.aguarde(1000)
				pare
				
				caso 4:
				contador(turma,tabelaAlunos)
				Util.aguarde(1000)
				pare
				
				caso 5:
				contador(turma,tabelaAlunos)
				Util.aguarde(1000)
				pare
				
				caso 6:
				contador(turma,tabelaAlunos)
				Util.aguarde(1000)
				pare
				
				caso 7:
				contador(turma,tabelaAlunos)
				Util.aguarde(1000)
				pare
				
				caso 8:
				contador(turma,tabelaAlunos)
				Util.aguarde(1000)
				pare
				
				caso 9:
				contador(turma,tabelaAlunos)
				Util.aguarde(1000)
				pare
			}
			Util.aguarde(1000)
			limpa()
		}
	funcao buscaAluno(cadeia tabelaAlunos[][])
	{
		
		inteiro linhas = Util.numero_linhas(tabelaAlunos)
		cadeia nomeBusca
		logico encontrado =  falso 
		
		limpa()
		escreva("Situação de Aluno")
		Util.aguarde(2000)
		limpa()
		
		escreva("Nome do aluno que está buscando: ")
		leia (nomeBusca)
		
		para (inteiro linha = 0; linha < linhas; linha++)
		{			
			se (tabelaAlunos[linha][0]==nomeBusca)
			{
				encontrado = verdadeiro
				pare
			}
		}
		
		se (encontrado == verdadeiro){
			escreva("\n\nNome: " + tabelaAlunos[linha][0])
			escreva("\nMês de nascimento: " + tabelaAlunos[linha][1])
			escreva("\nTurma: " + tabelaAlunos[linha][2]+ "º ano")
			escreva("\nNota da Prova 1: " + tabelaAlunos[linha][3])
			escreva("\nNota da Prova 2: " + tabelaAlunos[linha][4])
			escreva("\nNota da Prova 3: " + tabelaAlunos[linha][5])
			escreva("\nMédia do aluno: " + tabelaAlunos[linha][6])
			escreva("\nSituação final do aluno: " + tabelaAlunos[linha][7])
			Util.aguarde(1500)
		}
		senao{
			escreva("Aluno não encontrado.")
			Util.aguarde(2000)
			limpa()
		}
	}
	funcao cadastroAluno(cadeia tabelaAlunos[][])
	{		
		inteiro linhas = Util.numero_linhas(tabelaAlunos)

		limpa()
		escreva("Cadastro de Aluno")
		//Util.aguarde(2000)
		limpa()
		
		para(inteiro linha = 0; linha < linhas; linha++)
		{
			se(tabelaAlunos[linha][0] == "")
			{
				cadeia nome, situacao = ""
				inteiro mes = 0, turma = 0
				real nota1 = 0.0, nota2 = 0.0, nota3 = 0.0, media = 0.0
				caracter confirmacao
	
				escreva("Nome: ")
				leia(nome)
	
				faca{ escreva("\nMês de nascimento: ")
				leia(mes)
					se(Tipos.inteiro_para_cadeia(mes, 10) != "1" e Tipos.inteiro_para_cadeia(mes,10) != "2" e Tipos.inteiro_para_cadeia(mes,10) != "3" e Tipos.inteiro_para_cadeia(mes,10) != "4" e Tipos.inteiro_para_cadeia(mes,10) != "5" e Tipos.inteiro_para_cadeia(mes,10) != "6" e Tipos.inteiro_para_cadeia(mes,10) != "7" e Tipos.inteiro_para_cadeia(mes,10) != "8" e Tipos.inteiro_para_cadeia(mes,10) != "9" e Tipos.inteiro_para_cadeia(mes,10) != "10" e Tipos.inteiro_para_cadeia(mes,10) != "11" e Tipos.inteiro_para_cadeia(mes,10) != "12")
					{
						escreva("Digite um mês válido. (1 - 12)")
						//Util.aguarde(1000)
					}
				}enquanto(Tipos.inteiro_para_cadeia(mes, 10) != "1" e Tipos.inteiro_para_cadeia(mes,10) != "2" e Tipos.inteiro_para_cadeia(mes,10) != "3" e Tipos.inteiro_para_cadeia(mes,10) != "4" e Tipos.inteiro_para_cadeia(mes,10) != "5" e Tipos.inteiro_para_cadeia(mes,10) != "6" e Tipos.inteiro_para_cadeia(mes,10) != "7" e Tipos.inteiro_para_cadeia(mes,10) != "8" e Tipos.inteiro_para_cadeia(mes,10) != "9" e Tipos.inteiro_para_cadeia(mes,10) != "10" e Tipos.inteiro_para_cadeia(mes,10) != "11" e Tipos.inteiro_para_cadeia(mes,10) != "12")
	
				faca{ escreva("\nTurma: ")
				leia(turma)
					se(Tipos.inteiro_para_cadeia(turma, 10) != "1" e Tipos.inteiro_para_cadeia(turma, 10) != "2" e Tipos.inteiro_para_cadeia(turma, 10) != "3" e Tipos.inteiro_para_cadeia(turma, 10) != "4" e Tipos.inteiro_para_cadeia(turma, 10) != "5" e Tipos.inteiro_para_cadeia(turma, 10) != "6" e Tipos.inteiro_para_cadeia(turma, 10) != "7" e Tipos.inteiro_para_cadeia(turma, 10) != "8" e Tipos.inteiro_para_cadeia(turma, 10) != "9")
					{
						escreva("Digite uma turma válida. (1 - 9)")
						//Util.aguarde(1000)
					}
				}enquanto(Tipos.inteiro_para_cadeia(turma, 10) != "1" e Tipos.inteiro_para_cadeia(turma, 10) != "2" e Tipos.inteiro_para_cadeia(turma, 10) != "3" e Tipos.inteiro_para_cadeia(turma, 10) != "4" e Tipos.inteiro_para_cadeia(turma, 10) != "5" e Tipos.inteiro_para_cadeia(turma, 10) != "6" e Tipos.inteiro_para_cadeia(turma, 10) != "7" e Tipos.inteiro_para_cadeia(turma, 10) != "8" e Tipos.inteiro_para_cadeia(turma, 10) != "9")
	
				faca{ escreva("\nNota da prova 1: ")
				leia(nota1)
					se(nota1 < 0.0 ou nota1 > 10.0)
					{
						escreva("Digite um valor válido. (0 - 10)")
						//Util.aguarde(1000)
					}
				}enquanto(nota1 < 0.0 ou nota1 > 10.0)
	
				faca{ escreva("\nNota da prova 2: ")
				leia(nota2)
					se(nota2 < 0.0 ou nota2 > 10.0)
					{
						escreva("Digite um valor válido. (0 - 10)")
						//Util.aguarde(1000)
					}
				}enquanto(nota2 < 0.0 ou nota2 > 10.0)
	
				faca{ escreva("\nNota da prova 3: ")
				leia(nota3)
					se(nota3 < 0.0 ou nota3 > 10.0)
					{
						escreva("Digite um valor válido. (0 - 10)")
						//Util.aguarde(1000)
					}
				}enquanto(nota3 < 0.0 ou nota3 > 10.0)
										
				media = (nota1+nota2+nota3) / 3
				Matematica.arredondar(media, 2)
				tabelaAlunos[linha][0] = nome
				se(mes == 1)
				{
					tabelaAlunos[linha][1] ="Janeiro"
				}
				senao se(mes == 2)
				{
					tabelaAlunos[linha][1] = "Fevereiro"
				}
				senao se(mes == 3)
				{
					tabelaAlunos[linha][1] = "Março"
				}
				senao se(mes == 4)
				{
					tabelaAlunos[linha][1] = "Abril"
				}
				senao se(mes == 5)
				{
					tabelaAlunos[linha][1] = "Maio"
				}
				senao se(mes == 6)
				{
					tabelaAlunos[linha][1] = "Junho"
				}
				senao se(mes == 7)
				{
					tabelaAlunos[linha][1] = "Julho"
				}
				senao se(mes == 8)
				{
					tabelaAlunos[linha][1] = "Agosto"
				}
				senao se(mes == 9)
				{
					tabelaAlunos[linha][1] = "Setembro"
				}
				senao se(mes == 10)
				{
					tabelaAlunos[linha][1] = "Outubro"
				}
				senao se(mes == 11)
				{
					tabelaAlunos[linha][1] = "Novembro"
				}
				senao
				{
					tabelaAlunos[linha][1] = "Dezembro"
				}
				tabelaAlunos[linha][2] = Tipos.inteiro_para_cadeia(turma, 10)
				tabelaAlunos[linha][3] = Tipos.real_para_cadeia(nota1)
				tabelaAlunos[linha][4] = Tipos.real_para_cadeia(nota2)
				tabelaAlunos[linha][5] = Tipos.real_para_cadeia(nota3)			
				tabelaAlunos[linha][6] = Tipos.real_para_cadeia(Matematica.arredondar(media, 2))
				se(media >= 6)
				{
					situacao = "APROVADO"
				}
				se(media <= 6)
				{
					situacao = "REPROVADO"
				}
				tabelaAlunos[linha][7] = situacao
	
				
				escreva("Deseja cadastrar mais alunos? (S ou N) ")
				leia(confirmacao)
				se(confirmacao == 'N' ou confirmacao == 'n')
					pare
				enquanto(confirmacao != 'S' e confirmacao != 's' e confirmacao != 'N' e confirmacao != 'n')
				{
					limpa()
					escreva("Digite uma tecla válida. (S/s ou N/n)")
					//Util.aguarde(1000)
					limpa()
					escreva("Deseja cadastrar mais alunos? (S ou N)")
					leia(confirmacao)
				}
				limpa()
			} 
		}
	}
	funcao listagemAluno(cadeia tabelaAlunos[][])
	
	{		
		inteiro linhas = Util.numero_linhas(tabelaAlunos)
		inteiro cont = 0
		
		limpa()
		escreva("Exibição de Alunos")
		Util.aguarde(2000)
		limpa()
		escreva("-----------------------------------------\n\n")
		
		para(inteiro linha = 0; linha < linhas; linha++)
		{
			se(tabelaAlunos[linha][0] != "")
					{
						escreva("Nome: " + tabelaAlunos[linha][0])
						Matematica.arredondar(Tipos.cadeia_para_real(tabelaAlunos[linha][6]), 2)
						escreva("\nMês de nascimento: " + tabelaAlunos[linha][1])
						escreva("\nTurma: " + tabelaAlunos[linha][2]+ "º ano")
						escreva("\nNota da Prova 1: " + tabelaAlunos[linha][3])
						escreva("\nNota da Prova 2: " + tabelaAlunos[linha][4])
						escreva("\nNota da Prova 3: " + tabelaAlunos[linha][5])
						escreva("\nMédia do aluno: " + tabelaAlunos[linha][6])
						escreva("\nSituação final do aluno: " + tabelaAlunos[linha][7])
						Util.aguarde(1000)
						cont++
						escreva("\n\n-----------------------------------------\n\n")
					}				
		 }
		 escreva("\n\nNúmero total de alunos: "+ cont+ "\n\n")
		 Util.aguarde(1000)
	}
	funcao aniversariantes (cadeia tabelaAlunos[][])
	{
		inteiro linhas = Util.numero_linhas(tabelaAlunos)
		limpa()
		Util.aguarde(1000)
		escreva("\n-----------------------------------------\n\n")
		escreva("Aniversáriantes do mês de Janeiro: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Janeiro")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}
		escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Fevereiro: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Fevereiro")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Março: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Março")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Abril: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Abril")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Maio: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Maio")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Junho: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Junho")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Julho: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Julho")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Agosto: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Agosto")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Setembro: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Setembro")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Outubro: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Outubro")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Novembro: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Novembro")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}escreva("\n\n-----------------------------------------\n\n")
		Util.aguarde(1000)
		escreva("Aniversáriantes do mês de Dezembro: \n")
		para(inteiro linha=0 ; linha < linhas ; linha++)
		{
			se(tabelaAlunos[linha][1] == "Dezembro")
			{
				escreva(tabelaAlunos[linha][0] ," - ", tabelaAlunos[linha][2], "°ano\n")
			}
		}
	}
	funcao editaAluno(cadeia tabelaAlunos[][])	
	{
		inteiro linhas = Util.numero_linhas(tabelaAlunos)
		cadeia nomeBusca
		logico encontrado = falso
		
		limpa()
		escreva("Edição de Aluno")
		Util.aguarde(2000)
		limpa()
		
		escreva("Digite o nome do aluno que deseja editar: ")
		leia(nomeBusca)
		
		para(inteiro linha = 0; linha < linhas; linha++)
		{
			
			se(tabelaAlunos[linha][0] == nomeBusca)
			{
				encontrado = verdadeiro
				cadeia nomeEdicao = "", situacaoEdicao = ""
				real nota1Edicao, nota2Edicao, nota3Edicao, mediaEdicao
				inteiro  mesEdicao, turmaEdicao
				caracter confirmacao
				
				escreva("\nNovo Nome: ")
				leia(nomeEdicao)

				faca{ escreva("\nNovo Mês de nascimento: ")
				leia(mesEdicao)
				
				se(Tipos.inteiro_para_cadeia(mesEdicao, 10) != "1" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "2" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "3" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "4" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "5" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "6" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "7" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "8" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "9" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "10" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "11" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "12")
				{
					escreva("Digite um mês válido. (1 - 12)")
					Util.aguarde(1000)
				}
				}enquanto(Tipos.inteiro_para_cadeia(mesEdicao, 10) != "1" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "2" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "3" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "4" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "5" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "6" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "7" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "8" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "9" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "10" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "11" e Tipos.inteiro_para_cadeia(mesEdicao,10) != "12")
	
				faca{ escreva("\nNova Turma: ")
				leia(turmaEdicao)
					se(Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "1" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "2" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "3" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "4" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "5" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "6" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "7" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "8" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "9")
					{
						escreva("Digite uma turma válida. (1 - 9)")
						Util.aguarde(1000)
					}
				}enquanto(Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "1" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "2" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "3" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "4" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "5" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "6" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "7" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "8" e Tipos.inteiro_para_cadeia(turmaEdicao, 10) != "9")
	
				faca{ escreva("\nNova Nota da prova 1: ")
				leia(nota1Edicao)
					se(nota1Edicao < 0.0 ou nota1Edicao > 10.0)
					{
						escreva("Digite um valor válido. (0 - 10)")
						Util.aguarde(1000)
					}
				}enquanto(nota1Edicao < 0.0 ou nota1Edicao > 10.0)
	
				faca{ escreva("\nNova Nota da prova 2: ")
				leia(nota2Edicao)
					se(nota2Edicao < 0.0 ou nota2Edicao > 10.0)
					{
						escreva("Digite um valor válido. (0 - 10)")
						Util.aguarde(1000)
					}
				}enquanto(nota2Edicao < 0.0 ou nota2Edicao > 10.0)
	
				faca{ escreva("\nNova Nota da prova 3: ")
				leia(nota3Edicao)
					se(nota3Edicao < 0.0 ou nota3Edicao > 10.0)
					{
						escreva("Digite um valor válido. (0 - 10)")
						Util.aguarde(1000)
					}
				}enquanto(nota3Edicao < 0.0 ou nota3Edicao > 10.0)
										
				mediaEdicao = (nota1Edicao+nota2Edicao+nota3Edicao) / 3
				Matematica.arredondar(mediaEdicao, 2)
				tabelaAlunos[linha][0] = nomeEdicao
				tabelaAlunos[linha][1] = Tipos.inteiro_para_cadeia(mesEdicao, 10)
				tabelaAlunos[linha][2] = Tipos.inteiro_para_cadeia(turmaEdicao, 10)
				tabelaAlunos[linha][3] = Tipos.real_para_cadeia(nota1Edicao)
				tabelaAlunos[linha][4] = Tipos.real_para_cadeia(nota2Edicao)
				tabelaAlunos[linha][5] = Tipos.real_para_cadeia(nota3Edicao)
				tabelaAlunos[linha][6] = Tipos.real_para_cadeia(mediaEdicao)
				se(mediaEdicao >= 6)
				{
					situacaoEdicao = "APROVADO\n\n"
				}
				se(mediaEdicao <= 6)
				{
					situacaoEdicao = "REPROVADO\n\n"
				}
				tabelaAlunos[linha][7] = situacaoEdicao
	
				
				escreva("Deseja cadastrar mais alunos? (S ou N) ")
				leia(confirmacao)
				se(confirmacao == 'N' ou confirmacao == 'n')
					pare
				enquanto(confirmacao != 'S' e confirmacao != 's' e confirmacao != 'N' e confirmacao != 'n')
				{
					limpa()
					escreva("Digite uma tecla válida. (S/s ou N/n)")
					Util.aguarde(1000)
					limpa()
					escreva("Deseja cadastrar mais alunos? (S ou N)")
					leia(confirmacao)
				}
			limpa()
			}						
		}
		se(encontrado==falso)
			{
				escreva("Aluno não encontrado.")
				Util.aguarde(2000)
				limpa()
			}
	
	}
	funcao inicio()
	{
		const inteiro LIN = 300, COL = 8
		cadeia tabela[LIN][COL]
		inteiro cont = 0
		cadeia opcao
		logico fim = falso
	
		escreva("Escola Serratec")
		//Util.aguarde(1500)
		escreva("\n\nSistema de análise de alunos.")
		//Util.aguarde(1500)
		escreva("\n\nPor favor, aguarde")
		//Util.aguarde(1000)
		escreva(".")
		//Util.aguarde(1000)
		escreva(".")
		//Util.aguarde(1000)
		escreva(".")
		//Util.aguarde(2500)
		limpa()
		
		enquanto(nao fim)
		{
			faca{
			menu()
			leia(opcao)
				se(opcao != "1" e opcao != "2" e opcao != "3" e opcao != "4" e opcao != "5" e opcao != "6")
				{
					limpa()
					escreva("Opção inválida.\nEscolha uma opção entre 1 e 6")
					Util.aguarde(2000)
				}
			}enquanto(opcao != "1" e opcao != "2" e opcao != "3" e opcao != "4" e opcao != "5" e opcao != "6")
	
			escolha(Tipos.cadeia_para_inteiro(opcao, 10))
			{
				caso 1:
					cadastroAluno(tabela)
					pare
				caso 2:
					mediaTurmaCompleta(tabela)
					pare
				caso 3:
					buscaAluno(tabela)
					pare
				caso 4:
					listagemAluno(tabela)		
					pare
				caso 5:
					editaAluno(tabela)	
					pare
				caso 6:
					aniversariantes(tabela)
					pare
				caso 7:
					limpa()
					escreva("Finalizando o sistema")
					Util.aguarde(1000)
					escreva(".")
					Util.aguarde(1000)
					escreva(".")
					Util.aguarde(1000)
					escreva(".")
					Util.aguarde(2500)
					escreva("\n\nFim!\n")
					fim = verdadeiro
			}
		}
	}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 19245; 
 * @DOBRAMENTO-CODIGO = [7, 19, 63, 124, 165, 315, 348];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */