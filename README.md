# Aula 07: filas, com exemplos simples

Lógica de Programação. SENAI SC. Professor Rodrigo Moreira.

Este material foi organizado para uma turma online de aproximadamente 50 alunos, com atividades individuais. A aula usa filas FIFO, um vetor de três posições e uma variável `quantidade`.

## Acesso à atividade

Abra o site publicado pelo professor no GitHub Pages. Se recebeu os arquivos, abra `index.html` no navegador. Não precisa instalar programas nem criar conta para resolver a atividade HTML.

Na página, informe seu nome ou apelido e faça cada parte quando o professor indicar.

|Parte|Questões|O que você vai praticar|
|-|-|-|
|1|1 a 4|FIFO, primeiro atendimento, consulta e comparação com pilha.|
|2|5 a 8|Entrada no final, ordem dos documentos e espaço na fila.|
|3|9 a 12|Leitura de fila\[0], quantidade, vazia e verificação de espaço.|

Na questão 7, monte a ordem dos três documentos usando as seleções de primeiro, segundo e terceiro. Essa questão conta como um acerto quando a sequência completa está correta.

Clique em **Conferir parte** para ver os comentários. Corrija o que precisar e confira novamente. O simulador de três posições permite testar ideias, mas você pode responder às questões sem usá-lo.

Ao terminar, use **Baixar resultado .txt** ou **Imprimir / salvar PDF**. Se houver entrega solicitada, envie o arquivo pelo canal informado pelo professor. A página não envia respostas automaticamente. A pontuação é um retorno para estudo, sem nota institucional estabelecida por este material.

O progresso fica neste navegador. Se ele bloquear o armazenamento, mantenha a aba aberta e baixe o resultado antes de fechar. Reiniciar o simulador preserva as respostas. Apagar respostas exige confirmação e apaga também o nome e o histórico local.

## Códigos comentados em Portugol

1. [01\_fila\_tres\_nomes.por](codigos/01_fila_tres_nomes.por): guarda três nomes e mostra a ordem. Ainda não realiza remoções.
2. [02\_fila\_operacoes.por](codigos/02_fila_operacoes.por): implementa adicionar, atender, consultar, listar e verificar vazia. Os testes já estão no programa.
3. [03\_fila\_menu.por](codigos/03_fila_menu.por): usa as mesmas operações com um menu para o usuário escolher.

[Visualize e copie os códigos nesta página](codigos.html). Ela funciona mesmo abrindo os arquivos localmente.

Para executar, acesse [Portugol Webstudio](https://portugol.dev/), crie um arquivo no editor, apague o exemplo inicial, cole um dos códigos completos e use o botão de execução. No arquivo 03, digite uma opção quando o programa pedir. Escolha 1 para adicionar, informe um nome, escolha 3 para consultar e 2 para atender. Use 0 para sair.

Os arquivos usam a sintaxe de Portugol Studio, não Visualg. Mantenha as chaves e copie o programa inteiro.

## Como funciona esta implementação

O primeiro elemento sempre fica em `fila\[0]`. A variável `quantidade` indica quantos elementos válidos existem e qual posição será usada na próxima inserção, quando houver espaço.

Ao atender, o programa mostra o primeiro nome, desloca os demais uma posição para a esquerda, reduz `quantidade` e apaga a última posição liberada. Isso permite inserir novamente depois de uma saída.

Exemplo: Ana, Bruno, Caio. Ana sai. A fila fica Bruno, Caio. Davi entra. A fila fica Bruno, Caio, Davi.

Este é um modelo didático com deslocamento. Ele difere do modelo com índices de início e fim do complemento original. Ambos podem representar FIFO, mas têm comportamento e custo de remoção diferentes. Nesta aula, o foco é entender as operações. Fila circular fica para outro momento.

## Participação individual no Miro

[Abra o quadro individual](https://miro.com/app/board/uXjVEfVxT2k=/). Para localizar diretamente a nota do seu número, use [Miro\_Acesso.html](Miro_Acesso.html).

Cada participante usa uma nota numerada de 01 a 50. O professor informa o número de cada aluno, seguindo a lista de presença. As faixas de dez notas são apenas uma organização visual. Não representam grupos.

Caso do quadro: entram Ana, Bia e Caio, nessa ordem. Uma pessoa é atendida. Depois entra Davi.

Na sua nota, escreva seu nome e responda:

* Quem saiu?
* Quem ficou na frente?
* Quem aguarda, na ordem?
* Qual é um exemplo cotidiano de fila?

Edite apenas sua própria nota. Clique duas vezes nela para escrever. O professor discutirá algumas respostas com a turma. Essa atividade não tem correção automática no Miro e não é necessária para resolver o HTML.

Antes da aula, o professor precisa conferir se o link permite edição pelos participantes. O acesso depende das opções de compartilhamento da conta Miro. Se houver mais de 50 participantes, podem duplicar uma nota para criar 51, 52 e assim por diante, com orientação do professor.

## 

