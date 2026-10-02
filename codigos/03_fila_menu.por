programa
{
    // A fila pode guardar no maximo 3 nomes.
    cadeia fila[3]

    // quantidade informa quantas posicoes possuem elementos validos.
    inteiro quantidade = 0

    funcao logico vazia()
    {
        // Devolve verdadeiro se nao existe ninguem aguardando.
        retorne quantidade == 0
    }

    funcao adicionar(cadeia nome)
    {
        // quantidade tambem indica a posicao da proxima insercao.
        // Se vale 0, escrevemos em fila[0]. Se vale 2, em fila[2].
        se (quantidade < 3)
        {
            fila[quantidade] = nome
            quantidade = quantidade + 1
            escreva("Entrou: ", nome, "\n")
        }
        senao
        {
            // Uma tentativa recusada nao modifica a quantidade.
            escreva("Fila cheia. Nao entrou: ", nome, "\n")
        }
    }

    funcao frente()
    {
        se (vazia())
        {
            escreva("Fila vazia. Nao existe proximo.\n")
        }
        senao
        {
            // Apenas consulta. Nao altera nomes nem quantidade.
            escreva("Proximo: ", fila[0], "\n")
        }
    }

    funcao atender()
    {
        se (vazia())
        {
            escreva("Fila vazia. Ninguem para atender.\n")
        }
        senao
        {
            // O primeiro da fila sera atendido.
            escreva("Saiu: ", fila[0], "\n")

            // Cada elemento restante avanca uma posicao.
            // Se temos Ana, Bruno e Caio, Bruno ocupa 0 e Caio ocupa 1.
            // O limite evita ler uma posicao fora do vetor.
            para (inteiro i = 0; i < quantidade - 1; i++)
            {
                fila[i] = fila[i + 1]
            }

            // Uma pessoa saiu. Diminuimos a contagem.
            quantidade = quantidade - 1

            // Apagamos o texto da posicao que ficou livre no final.
            fila[quantidade] = ""
        }
    }

    funcao listar()
    {
        escreva("Quantidade: ", quantidade, "\n")
        se (vazia())
        {
            escreva("Ninguem aguardando.\n")
        }
        senao
        {
            // Percorremos somente as posicoes validas.
            para (inteiro i = 0; i < quantidade; i++)
            {
                escreva(i + 1, " - ", fila[i], "\n")
            }
        }
    }

    funcao inicio()
    {
        // O menu permite escolher uma operacao a cada repeticao.
        inteiro opcao = -1
        cadeia nome

        faca
        {
            escreva("\n1 - Adicionar\n2 - Atender\n3 - Consultar frente\n")
            escreva("4 - Listar\n5 - Verificar vazia\n0 - Sair\n")
            escreva("Escolha uma opcao: ")
            leia(opcao)

            // Cada caso chama uma funcao que ja conhecemos.
            escolha (opcao)
            {
                caso 1:
                    escreva("Digite um nome: ")
                    leia(nome)
                    se (nome != "")
                    {
                        adicionar(nome)
                    }
                    senao
                    {
                        escreva("Informe um nome.\n")
                    }
                    pare
                caso 2:
                    atender()
                    pare
                caso 3:
                    frente()
                    pare
                caso 4:
                    listar()
                    pare
                caso 5:
                    se (vazia())
                    {
                        escreva("Vazia = verdadeiro\n")
                    }
                    senao
                    {
                        escreva("Vazia = falso\n")
                    }
                    pare
                caso 0:
                    escreva("Encerrando.\n")
                    pare
                caso contrario:
                    escreva("Opcao invalida.\n")
            }
            // O menu continua enquanto o usuario nao escolher zero.
        } enquanto (opcao != 0)
    }
}
