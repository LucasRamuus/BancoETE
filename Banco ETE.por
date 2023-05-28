programa
{
	
	funcao inicio()
	{ 
       //Declaração de Variaveis		
       inteiro opcao
       cadeia nome, senha , agencia, numeroconta,opcao2
       real depositoC=0.0 ,depositoP=0.0,deposito=0.0,deposito2=0.0 ,saque,resgate
       logico menu=verdadeiro
        //Entrada de Dados
        //Cadastro da contaCC e contaCP
		escreva("Para Realizar o Cadastro Digite seu Nome:")
		leia(nome)
		limpa()
		escreva("Digite sua Senha:")
		leia(senha)
		limpa()
		escreva("Número da Agência:") 
		leia(agencia)
		limpa()
		escreva("Número da Conta:")
		leia(numeroconta)
		limpa()
		escreva("Cadastrado realizado!\n")
		escreva("Deseja Realizar Um Deposito Para Iniciar ?\n")
		escreva("S/N:")
		leia(opcao2)
		limpa()
		se(opcao2 == "S" ou opcao2 == "s"){
		escreva("Qual Valor Deseja Deposita?\n")
		leia(depositoC)
		escreva("Deposito Realizado com Sucesso!\n\n")
		}
	   faca{
	    //MENU DO BANCO
	
 	     escreva("╔═══════════════════╗╔════════════════════╗","\n")
		escreva("║               BANCO ETE                 ║","\n")	
		escreva("║          Opções do Banco                ║","\n")	
		escreva("║        1-Exibir Conta Corrente          ║","\n")
		escreva("║        2-Exibir Conta Poupança          ║","\n")
		escreva("║        3-Depósitar                      ║","\n")
		escreva("║        4-Saque                          ║","\n")
		escreva("║        5-Aplicar na Poupança            ║","\n")
		escreva("║        6-Resgata da Poupança            ║","\n")
		escreva("║        7-Sair                           ║","\n")
		escreva("╚═══════════════════╝╚════════════════════╝","\n")
		leia(opcao)
		limpa()
		
          //Saída de Dados
          //Estrutura escolha para exibir as opções 
		escolha(opcao){
	     //Opção para Exibição da conta corrente	
          caso 1: 
		escreva("════════════ Dados da Conta Corrente ════════════  \n")
		escreva("Nome:",nome,"\n","Agência:",agencia,"\n","numero da Conta:",numeroconta,"-0\n","Saldo:",depositoC,+"R$","\n\n")
		pare
		 //Opção para Exibição da conta corrente	
          caso 2: 
		escreva("════════════ Dados da Conta Poupança ════════════  \n")
		escreva("Nome:",nome,"\n","Agência:",agencia,"\n","numero da Conta:",numeroconta,"-1\n","Saldo:",depositoP,+"R$","\n\n")
		pare
		//Opção para o depósito da conta corrente com a estrutura de repetição 
		caso 3:
		escreva("Qual valor do depósito ?\n")
		leia(deposito)
		limpa()
		se(deposito > 0.0){
	     depositoC = deposito + depositoC
	     escreva("Depósito Realizado com Sucesso!\n\n\n")
		}senao se(deposito <= 0.0)
		escreva("Saldo Insuficiente!\n\n\n")
		pare
		
		//Saque com a Estrutura de repetição
		caso 4:
		escreva("Qual valor deseja Sacar?\n")
		leia(saque)
		se(saque <= 0.0 ou saque > depositoC ou depositoC <= 0.0){
			escreva("Saldo Insuficiente para Realizar o saque\n\n\n")
		}senao se(saque <= depositoC){
			 depositoC = depositoC - saque
			 escreva("Saque Realizado com Sucesso!\n\n\n")
		}
		pare
		//Aplicação na Poupança com a Estrutura de Repetição
          caso 5:
		escreva("Qual Valor deseja aplicar na Poupança ?\n")
		leia(deposito2)
		se(deposito2 <= depositoC){
		depositoC = depositoC - deposito2
		depositoP = depositoP + deposito2
		escreva("Aplicação Realizada com Sucesso!\n\n\n")
		}senao se(deposito2 <= 0.0 ou deposito2 > depositoC) 
		escreva("Saldo Insuficiente para realizar Aplicação!\n\n\n")
		//Resgate do Saldo aplicado na Poupança com a Estrutura de Repetição
		pare
          caso 6:
          escreva("Qual valor Deseja Resgata da Poupança?\n")
          leia(resgate)
          se(resgate <= depositoP){
          depositoP = depositoP - resgate
          depositoC = resgate + depositoC
          escreva("Resgate Realizado com Sucesso!\n\n\n")
          }senao se( resgate <= 0.0 ou resgate > depositoP ou depositoP <= 0.0)
           escreva("Saldo Insuficiente para Realizar o Resgate!\n\n\n")
          pare
          //Finalização do Programa
          caso 7:
          menu=falso
          escreva("Conta Desconectada!")
          pare
          
		}

        }enquanto ( menu==verdadeiro ) 



           
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 751; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */