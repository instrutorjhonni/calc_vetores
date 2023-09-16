programa
{
	inteiro A[5], B[5]
	real R[5]
	inteiro cont, opcao
	logico existeZero = falso
	
	funcao inicio()
	{
		para ( cont = 0; cont <= 4; cont++ )
		{
			limpa()
			escreva("A[",cont,"]: ")
			leia( A[cont] )
		}
		para ( cont = 0; cont <= 4; cont++ )
		{
			limpa()
			escreva("B[",cont,"]: ")
			leia( B[cont] )
			se ( B[cont]  == 0 )
				existeZero = verdadeiro
		}
		limpa()
		escreva("Operação aritmética desejada: \n1- Adição \n2- Subtração \n3- Multiplicação \n4- Divisão\n")
		leia( opcao )
		limpa()
		escolha ( opcao ) 
		{
			caso 1:
			{
				para (cont = 0; cont <= 4; cont++ )
					R[cont] = A[cont] + B[cont]
				pare
			}
			caso 2:
			{
				para ( cont = 0; cont <= 4; cont++ )
					R[cont] = A[cont] - B[cont]
				pare
			}
			caso 3:
			{
				para ( cont = 0; cont <= 4; cont++ )
					R[cont] = A[cont] * B[cont]
				pare
			}
			caso 4:
			{
				se ( existeZero )
					escreva("Não é possível executar os cálculos porque existem valores zerados no vetor B")
				senao
				{
					para (cont = 0; cont <= 4; cont++ )
						R[cont] = A[cont] / B[cont]
				}
				pare
			}
			caso contrario:
				escreva("Opção inválida")
		}

		se ( nao (existeZero) )
		{
			limpa()
			escreva("\nValores de A")
			para (cont = 0; cont <= 4; cont++ )
				escreva("\n",A[cont])
			escreva("\nValores de B")
			para (cont = 0; cont <= 4; cont++ )
				escreva("\n",B[cont])
			escreva("\nValores de R")
			para (cont = 0; cont <= 4; cont++ )
				escreva("\n",R[cont])
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 322; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {A, 3, 9, 1}-{B, 3, 15, 1}-{R, 4, 6, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */