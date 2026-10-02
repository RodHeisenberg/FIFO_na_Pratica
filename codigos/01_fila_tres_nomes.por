programa
{
    funcao inicio()
    {
        // Um vetor com 3 posicoes. Os indices sao 0, 1 e 2.
        cadeia fila[3]

        // Guardamos os nomes na ordem em que chegaram.
        fila[0] = "Ana"
        fila[1] = "Bruno"
        fila[2] = "Caio"

        escreva("ORDEM DE ATENDIMENTO\n")

        // i comeca em 0. O teste i < 3 permite visitar 0, 1 e 2.
        // i++ aumenta o indice em 1 depois de cada repeticao.
        para (inteiro i = 0; i < 3; i++)
        {
            // Mostra o nome da posicao atual.
            escreva(i + 1, " - ", fila[i], "\n")
        }

        // Saida: 1 - Ana, 2 - Bruno, 3 - Caio.
        // Aqui apenas mostramos a ordem. Nao removemos os nomes do vetor.
        // Experimente mudar os nomes e executar novamente.
    }
}
