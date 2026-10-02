programa
{
    // CAPACIDADE e tamanho de fila devem ser alterados juntos.
    const inteiro CAPACIDADE = 3
    cadeia fila[3]
    // Nomes diferentes de funcao inicio() evitam ambiguidade.
    inteiro posInicio = 0
    inteiro posFim = 0

    funcao logico vazia()
    {
        retorne posInicio == posFim
    }

    funcao adicionar(cadeia nome)
    {
        se (nome == "")
        {
            escreva("Informe um nome.\n")
        }
        senao se (posFim < CAPACIDADE)
        {
            fila[posFim] = nome
            posFim = posFim + 1
            escreva("Entrou: ", nome, "\n")
        }
        senao
        {
            escreva("Insercao recusada. O indice final atingiu o limite do vetor.\n")
        }
    }

    funcao cadeia remover()
    {
        se (vazia())
        {
            escreva("Fila vazia.\n")
            retorne ""
        }
        cadeia valor = fila[posInicio]
        posInicio = posInicio + 1
        // Reaproveita as posicoes apenas quando todos ja sairam.
        se (posInicio == posFim)
        {
            posInicio = 0
            posFim = 0
        }
        retorne valor
    }

    funcao frente()
    {
        se (vazia())
        {
            escreva("Fila vazia. Nao ha frente.\n")
        }
        senao
        {
            escreva("Proximo: ", fila[posInicio], "\n")
        }
    }

    funcao listar()
    {
        escreva("inicio = ", posInicio, ", fim = ", posFim,
                ", quantidade = ", posFim - posInicio, "\n")
        se (vazia())
        {
            escreva("Nenhum elemento aguardando.\n")
        }
        senao
        {
            para (inteiro i = posInicio; i < posFim; i++)
            {
                escreva("Posicao ", i, ": ", fila[i], "\n")
            }
        }
    }

    funcao limpar()
    {
        posInicio = 0
        posFim = 0
        escreva("Fila limpa. Todos os elementos anteriores sairam da fila logica.\n")
    }

    funcao inicio()
    {
        inteiro opcao = -1
        cadeia nome, removido
        faca
        {
            escreva("\n1 - Adicionar\n2 - Atender\n3 - Consultar frente\n")
            escreva("4 - Listar e mostrar indices\n5 - Verificar vazia\n")
            escreva("6 - Limpar\n0 - Sair\nEscolha: ")
            leia(opcao)
            escolha (opcao)
            {
                caso 1:
                    escreva("Nome: ")
                    leia(nome)
                    adicionar(nome)
                    pare
                caso 2:
                    removido = remover()
                    se (removido != "")
                    {
                        escreva("Saiu: ", removido, "\n")
                    }
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
                caso 6:
                    limpar()
                    pare
                caso 0:
                    escreva("Encerrando.\n")
                    pare
                caso contrario:
                    escreva("Opcao invalida.\n")
            }
        } enquanto (opcao != 0)
    }
}
