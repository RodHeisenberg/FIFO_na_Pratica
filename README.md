# Aula 07: filas FIFO

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

Estas instruções são para quem vai disponibilizar a página à turma.

1. Crie ou abra o repositório que receberá a atividade. Para usar GitHub Free, utilize um repositório público.
2. Extraia o ZIP. Envie **os arquivos de dentro da pasta**, colocando `index.html`, `README.md` e os dois `.por` na raiz do repositório. Não envie apenas o ZIP.
3. Na aba **Code**, use **Add file > Upload files**. Arraste os arquivos e confirme em **Commit changes**.
4. Abra **Settings > Pages**.
5. Em **Build and deployment**, escolha **Deploy from a branch**.
6. Em **Branch**, selecione a branch que contém o HTML, normalmente `main`, e a pasta **/(root)**. Clique em **Save**.
7. Aguarde a publicação e copie o endereço que aparece em Pages. Compartilhe esse endereço com os alunos. O endereço da aba Code mostra o repositório, não o site da atividade.
8. Abra o site e teste uma inserção e uma remoção antes da aula. Se o site retornar 404, confira a branch, a pasta e o nome `index.html` em letras minúsculas. Consulte a aba Actions se houver erro de publicação.

Fonte das instruções: [documentação oficial do GitHub Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site).

Se esse repositório já possui outro `index.html`, evite substituí-lo por acidente. Coloque os arquivos desta atividade em uma pasta `aula07`. O endereço da atividade terminará em `/aula07/`, mantendo a configuração de publicação da raiz.

## Dados e recuperação

A página guarda respostas e estado do simulador no `localStorage` do navegador. Não há servidor de coleta, cadastro ou painel do professor. Em navegação privada, ao limpar dados do navegador ou ao trocar de dispositivo/endereço, o progresso pode desaparecer. Baixe o relatório antes de fechar.

O botão **Apagar meu progresso** remove o registro local depois de confirmação. Reiniciar apenas o simulador preserva as respostas. Se o navegador bloquear armazenamento, a página continua funcionando na aba aberta e avisa para baixar o relatório.

## Arquivos do repositório

| Arquivo | Finalidade |
| --- | --- |
| `index.html` | Página completa, com estilos, simulador, missões e exportação. |
| `README.md` | Orientações da atividade e publicação. |
| `fila_linear_sem_reset.por` | Exemplo de fila linear para demonstração. |
| `fila_linear_com_reset.por` | Exemplo com reset ao esvaziar e menu interativo. |

O roteiro e o gabarito do professor acompanham um pacote separado.
