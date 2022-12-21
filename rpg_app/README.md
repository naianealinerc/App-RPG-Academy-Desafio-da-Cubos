# Aplicativo RPGAcademy | Desafio da Cubos Academy
## 🎯 Visão do Projeto
Você já jogou RPG de mesa?

RPG ou Role Playing Game é um jogo onde se interpreta papéis dentro de uma narrativa criada pelo mestre do jogo. Uma das principais ferramentas utilizadas para tomada de decisões na história dentro da trama são dados que podem ser de vários tipos, dependendo do sistema utilizado no jogo.

## Os dados possíveis são:

D4 - dado de quatro lados

D6 - dado de seis lados

D8 - dado de oito lados

D10 - dado de dez lados

D12 - dado de doze lados

D20 - dado de vinte lados

Nossa missão neste desafio é criar um aplicativo que forneça os dados para uma jogatina de RPG de forma simples e fácil, facilitando a jogatina dos amantes de RPG e jogos de jogos de tabuleiros.


## ✅ Escopo de projeto
Deve ser criado um aplicativo em Flutter com as seguintes especificações:

- [ ] Visualização dos dados
- [ ] Seleção de um dado
- [ ] Rolagem do dado selecionado
- [ ] Alteração entre dark e light mode

O projeto foi dividido em tarefas menores, gerenciadas no [Kanban](https://furry-modem-ec6.notion.site/Projeto-da-cubos-M-dulo-1-5dd5c194c348466e8ea26a385933d7a6), com sprints rápidos de duração de 1 dia. 

O layout do projeto no Figma pode ser acessado [aqui](https://www.figma.com/file/mwVxPYMO1NSfqptKqGMzrU/RPG-Academy?node-id=0%3A1&t=rzWDtPkS5LGdCyuM-1).


## 📂 Estrutura do projeto
- `lib\model`:  pasta com o model Dice, que recebe as características de cada tipo de dado de RPG;
- `lib\resources`:  documentos que agrupam as Strings e Themes do projeto, facilitando a edição de qualquer texto, cores ou elementos do tema no futuro;
- `lib\UI\components`: reúne widgets componentizados, como botões ou menus, facilitando a edição desses elementos no futuro;
- `lib\UI\views`: reúne as views `view_dice` e `view_home`, que definem toda a aparência da tela de Home e tela do Dado selecionado; 
- `lib\UI\home_app.dart`: documento que centraliza toda a lógica do aplicativo, mantendo a navegação entre as telas, lógica dos botões e mais. 


## 🔩 Widgets utilizados no projeto 

- `PageView`: permitiu a navegação entre as páginas de Home e Dice. Para controlar essa navegação foi usado um PageController. Para evitar vazamento de memória, o método `.dispose()` do PageController foi chamado; 
- `Container`: usado para construir a aparência dos botões de seleção de dados de RPG. A versatilidade do Container foi usada para garantir que aparência do botão fosse exatamente como indicada no projeto do Figma; 
- `InkWell`: foi usado como pai do Container que constrói a aparência dos botões. O InkWell permite que o Container se transforme em um botão acionável a partir do clique do usuário;
- `Expanded`: usado para definir o espaço ocupado pelos widgets na tela;
- `Switch`: usado no componente que define o Header da aplicação, que conta com o título do App e um toggle que o usuário pode interagir para alterar o tema do aplicativo para o modo Dark ou Light. Esse switch pode ser acionado pelo usuário em qualquer uma das telas do App;
- `ElevatedButton`: usado para construir o botão de rolagem de dados na tela `view_dice`. A lógica do botão foi definida por um método que usa a classe `Randon()` para gerar um número aleatório de 1 a n (n sendo o número de lados do dado escolhido). Para garantir que o código ficasse limpo, toda a definição do visual do botão (formato, cores, estilo do texto) foram definidas diretamente no tema do App, no arquivo `theme.dart`;
- `OutlinedButton`: usado para construir o botão de cancelar operação na tela `view_dice`. Quando pressionado, ele limpa o valor aleatório gerado pelo botão de rolagem, e aciona o controller para navegar de volta para a tela de Home do App. 





