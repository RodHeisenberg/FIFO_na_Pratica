# Aula: filas FIFO

**Lógica de Programação, SENAI SC. Professor Rodrigo Moreira.**

Nesta atividade você vai prever a ordem de atendimento, testar operações de fila e investigar os índices de um vetor. As três missões são individuais. A discussão no Miro é colaborativa.

## Como acessar

Abra o link do GitHub Pages que o professor compartilhar. Se recebeu os arquivos, abra `index.html` com dois cliques. Use Chrome, Edge ou Firefox com JavaScript habilitado. A atividade funciona sem login, sem instalação e sem acesso a uma API.

## O que você vai fazer

| Missão | Tempo sugerido | Seu trabalho |
| --- | --- | --- |
| 1. Ordem de atendimento | 10 minutos | Prever quem sai, executar inserções, remoções e consultas, comparar FIFO com LIFO. |
| 2. O espaço que sobrou | 18 minutos | Testar um vetor de três posições sem reset e com reset ao esvaziar. Registrar inicio, fim e quantidade. |
| 3. Entendendo o algoritmo | 13 minutos | Completar operações, escrever um pseudocódigo para três nomes e explicar um exemplo de aplicação. |

Faça cada missão quando o professor indicar. O tempo da aula inclui explicações, demonstrações e discussão dos resultados.

1. Informe seu nome ou apelido.
2. Na missão 1, clique em **Preparar simulador para missão 1**, faça a previsão e execute a sequência.
3. Clique em **Conferir missão 1** e leia os comentários. Ajuste o que precisar.
4. Na missão 2, execute primeiro o **cenário A: sem reset**. Depois prepare o **cenário B: reset ao esvaziar** e repita os testes.
5. Na missão 3, responda aos trechos do algoritmo e escreva o pseudocódigo para três nomes. Registre seu caso de uso com pelo menos 20 palavras. Essa explicação será lida pelo professor.
6. Escreva o que aprendeu e sua dúvida no fim da página.
7. Clique em **Baixar relatório .txt**. Você também pode usar **Imprimir / salvar em PDF**.
8. Envie o arquivo pelo canal informado pelo professor. A página não envia respostas automaticamente.

Não foi definido prazo ou pontuação institucional neste material. Os acertos mostrados servem como retorno para estudo.

## Como ler o simulador

- **inicio** aponta para o primeiro elemento válido.
- **fim** aponta para a próxima posição de inserção. Quando chega à capacidade, fica fora do vetor.
- **Quantidade** é `fim - inicio`, nesta implementação linear.
- **Azul** indica elementos válidos na fila.
- **Bege** indica valores antigos que continuam no vetor, mas já saíram da fila lógica.
- **Branco** indica uma posição nunca usada desde a preparação do cenário.
- **Consultar frente** não remove ninguém.
- **Atender próximo** remove logicamente o primeiro e avança inicio.

A fila usa um vetor fixo. No modelo sem reset, os índices só avançam. No modelo com reset, ambos voltam a zero quando o último elemento sai. O reset só reaproveita posições depois de esvaziar completamente. Ele não resolve a falta de espaço com elementos ainda aguardando, nem implementa uma fila circular.

Ao mudar capacidade ou modelo, o simulador reinicia. Suas respostas e o histórico anterior permanecem. O histórico completo, limitado aos últimos 500 registros, acompanha o relatório. A página exibe os últimos 60.

## Atividade colaborativa ao vivo

[Abrir o quadro da aula no Miro](https://miro.com/app/board/uXjVEfXDFzs=/).

O professor dividirá a turma entre os casos de atendimento, impressora e cantina. Em cada grupo, uma pessoa opera o quadro, outra registra as conclusões e os colegas conferem a ordem. Usem notas curtas e justifiquem as respostas. Os modelos de notas existentes podem ser duplicados.

O acesso de edição dos alunos depende das configurações de compartilhamento do quadro. O professor fornecerá um link com a permissão apropriada. Se a edição não estiver disponível, o grupo dita as respostas e o professor registra no quadro.

## Código de apoio em Portugol

- [Fila linear sem reset](fila_linear_sem_reset.por): ajuda a observar o limite do índice final.
- [Fila linear com reset e menu](fila_linear_com_reset.por): permite inserir, remover, consultar frente, listar e verificar vazia.

Esses códigos apoiam a demonstração do professor. Você resolve as missões diretamente nesta página. Para explorar os arquivos depois, abra [Portugol Webstudio](https://portugol.dev/), crie um arquivo, copie o conteúdo do `.por` e execute pelo botão de execução do editor.

## Publicar esta atividade no GitHub Pages

## Arquivos do repositório

| Arquivo | Finalidade |
| --- | --- |
| `index.html` | Página completa, com estilos, simulador, missões e exportação. |
| `README.md` | Orientações da atividade e publicação. |
| `fila_linear_sem_reset.por` | Exemplo de fila linear para demonstração. |
| `fila_linear_com_reset.por` | Exemplo com reset ao esvaziar e menu interativo. |

