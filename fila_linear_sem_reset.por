programa
{
    const inteiro CAPACIDADE = 3
    cadeia fila[3]
    inteiro posInicio = 0
    inteiro posFim = 0

    funcao adicionar(cadeia nome)
    {
        se (posFim < CAPACIDADE)
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
        se (posInicio == posFim)
        {
            escreva("Fila vazia.\n")
            retorne ""
        }
        cadeia valor = fila[posInicio]
        posInicio = posInicio + 1
        retorne valor
    }

    funcao listar()
    {
        escreva("inicio = ", posInicio, ", fim = ", posFim,
                ", quantidade = ", posFim - posInicio, "\n")
        se (posInicio == posFim)
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

    funcao inicio()
    {
        adicionar("P1")
        adicionar("P2")
        adicionar("P3")
        escreva("Saiu: ", remover(), "\n")
        adicionar("P4") // Recusa mesmo com apenas dois elementos validos.
        listar()
        escreva("Saiu: ", remover(), "\n")
        escreva("Saiu: ", remover(), "\n")
        listar()
        adicionar("P5") // Recusa mesmo depois de esvaziar.
    }
}
