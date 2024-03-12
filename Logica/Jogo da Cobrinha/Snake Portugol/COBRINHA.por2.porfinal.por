programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	
	const inteiro LARGURA_JANELA = 600
	const inteiro ALTURA_JANELA= 600
	
	inteiro pontuacao = 0
	inteiro delay = 100
	inteiro xcabeca_cobra = 300
	inteiro ycabeca_cobra = 300
	logico direita=falso,esquerda=falso,cima=falso,baixo=falso
	inteiro xcorpo_da_cobra[600]
	inteiro ycorpo_da_cobra[600]
	inteiro xposicaos_maca[24] = {0,25,50,75,100,125,150,175,200,225,250,275,300,325,350,375,400,425,450,475,500,525,550,575}
	inteiro yposicaos_maca[22] = {50,75,100,125,150,175,200,225,250,275,300,325,350,375,400,425,450,475,500,525,550,575}
	inteiro xmaca = 300
	inteiro ymaca = 300
	inteiro tamanho_cobra = 1

	
	funcao inicio()
	{
		montar_janela()
		enquanto(verdadeiro){
			pintar_jalena()
			desenhar_janela()
			mapeamento_teclado()
			corpo_cobra()
			mover()
			atualizar_pontos()
			reiniciar()
			maca()
			desenhar_parte_1()
			cobra_parte2()
			sortear()
			g.renderizar()
			u.aguarde(delay)
		
		}
	}
	funcao montar_janela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(LARGURA_JANELA, ALTURA_JANELA)
		g.definir_titulo_janela("Jogo da Cobrinha")
	}
	funcao pintar_jalena(){
		g.definir_cor(g.COR_VERDE)
		g.limpar()
	}
	funcao desenhar_janela(){
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(0, 0, 600, 25, falso, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(20.00)
		g.desenhar_texto(5 , 5, "PONTOS ATUAL:" + pontuacao)

	
		
	}
	funcao desenhar_parte_1(){
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(xcabeca_cobra, ycabeca_cobra, 25, 25, falso, verdadeiro)
	}
	funcao mapeamento_teclado(){
		se(t.tecla_pressionada(t.TECLA_SETA_DIREITA)){
			direita = verdadeiro
			esquerda = falso
			cima = falso
			baixo =falso
		}
		senao se(t.tecla_pressionada(t.TECLA_SETA_ESQUERDA)){
			direita = falso
			esquerda = verdadeiro
			cima = falso
			baixo =falso
		}
		senao se(t.tecla_pressionada(t.TECLA_SETA_ACIMA)){
			direita = falso
			esquerda = falso
			cima = verdadeiro
			baixo =falso
		}
		senao se(t.tecla_pressionada(t.TECLA_SETA_ABAIXO)){
			direita = falso
			esquerda = falso
			cima = falso
			baixo = verdadeiro
		}
	}
	funcao mover(){
		se(direita){
			xcabeca_cobra += 25
		}
		senao se(esquerda){
			xcabeca_cobra -= 25
		}
		se(cima){
			ycabeca_cobra -= 25
		}
		senao se(baixo){
			ycabeca_cobra += 25
		}
	}
	funcao logico parede(){
		se(xcabeca_cobra > 575 ou xcabeca_cobra < 0){
			retorne verdadeiro
		}
		senao se(ycabeca_cobra > 575 ou ycabeca_cobra < 25){
			retorne verdadeiro
		}
		senao{
			retorne falso
		}
	}
	funcao reiniciar(){
		se(parede()){
			tamanho_cobra = 1
			xcabeca_cobra = 300
			ycabeca_cobra = 300
			direita = falso
			esquerda = falso
			cima = falso
			baixo =falso
		}
	}
	funcao logico comeu_maca(){
		se(xcabeca_cobra == xmaca e ycabeca_cobra == ymaca){
			retorne verdadeiro
		}
		senao{
			retorne falso
		}
	}
	funcao sortear(){
		inteiro xindice = u.sorteia(0, 23)
		inteiro yindice = u.sorteia(0, 21)
		se(comeu_maca()){
			xmaca = xposicaos_maca[xindice]
			ymaca = yposicaos_maca[yindice]
		}
	}
	funcao maca(){
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_retangulo(xmaca, ymaca, 25, 25, falso, verdadeiro)
	}
	funcao corpo_cobra(){
		xcorpo_da_cobra[0] = xcabeca_cobra
		ycorpo_da_cobra[0] = ycabeca_cobra
		para(inteiro i = 599;i > 0; i--){
			xcorpo_da_cobra[i] = xcorpo_da_cobra[i-1]
			ycorpo_da_cobra[i] = ycorpo_da_cobra[i-1]
		}
	}
	funcao cobra_parte2(){
		se(comeu_maca()){
			tamanho_cobra++
		}
		para(inteiro i = 0; i < tamanho_cobra; i++){
			g.desenhar_retangulo(xcorpo_da_cobra[i], ycorpo_da_cobra[i], 25, 25, falso, verdadeiro)
		}
	}
	funcao atualizar_pontos(){
		pontuacao = tamanho_cobra - 1    
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 939; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */