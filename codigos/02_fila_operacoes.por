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
        // A execucao comeca aqui. Primeiro testamos a fila vazia.
        frente()
        atender()

        adicionar("Ana")
        adicionar("Bruno")
        adicionar("Caio")

        frente() // Mostra Ana, sem retirar.
        adicionar("Davi") // Recusa: as 3 posicoes estao ocupadas.

        atender() // Ana sai. A fila passa a ser Bruno, Caio.
        adicionar("Davi") // Agora existe espaco. Davi entra no final.
        listar() // Resultado: Bruno, Caio, Davi.
    }
}
