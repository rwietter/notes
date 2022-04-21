### 1 - Por que o código-objeto gerado pelo tradutor ainda não pode ser executado?

Um tradutor é um 'compilador' genérico que tem apenas como função traduzir um código fonte para um código de baixo nível. Ou seja, ele traduz o código para um módulo-objeto que ainda não é um arquivo executável. Para executar esse módulo-objeto, é necessário que um Linker e o Loader sejam usados para fazer o link das bibliotecas e carregar na memória.

---

### 2 - Por que a execução de programas interpretados é mais lenta que a de programas compilados?

Interpretadores e código se diferem dos compiladores em alguns pontos que faz com que eles sejam um pouco mais lentos. Código compilado se torna estático e praticamente imutável senão por patches do binário ou injeção de código no processor. Já código que é interpretado é mais flexível e pode ser alterado em *run time*, ou seja, o interpretador irá interpretar uma injeção de código sem reiniciar a aplicação inteira. O Problema disso é que o bytecode do interpretador não passou por um processo otimização profunda e por um linker o que torna a interpretação mais lenta. Atualmente, muitos interpretadores adotaram um modelo de compilação (JIT - Just-in-Time) para otimizar o código e tornar o processo de interpretação mais rápido fazendo cache de binários mais acessados, por exemplo.

---

### 3 - Quais as funções do linker?

Na primeira fase de compilação, onde o compilador realiza as etapas de lexer e análise sintática o compilador não realiza a tabelação predeterminada de endereços de memória, mas adiciona uma flag uma referência hexadecimal para o linker checar. Assim, o linker realiza o link desses módulos-objetos e irá resolver todas as referências simbólicas existentes entre os módulos-objeto, reservar memória para a execução do programa e determinar uma região da memória onde o programa será carregado para sua execução. Além disso, ele realiza otimizações quando possível para remover código desnecessário visto que o código compilado será estático.

---

### 4 - Qual a principal função do loader?

Em ambiente mutiprogramáveis onde não é possível predeterminar os endereços de memória de forma fixa como o linker faz, irá reservar endereços de acesso aleatório para carregar o programa na memória principal para execução. O loader carrega um programa para memória principal, ele aloca uma área de código, uma área de dados e uma área de pilha. A área de código armazena o programa executável, a área de dados armazena as variáveis e constantes utilizadas no programa e a área de pilha armazena os endereços de retorno das funções ou procedimentos chamados durante a execução do programa.

O Loader pode ser absoluto ou realocável dependendo do código gerado pelo linker. Quando absoluto, será necessário conhecer os endereços determinados pelo linker e carregar o programa do memória segundária para a principal. Quando realocável, o loader o programa pode ser carregado em qualquer posição de memória e o loader é responsável pela relocação no momento do carregamento

---

### 5 - Quais as facilidades oferecidas pelo depurador?



---

### 6 - O que é concorrência e como este conceito está empregado nos SOs multiprogramáveis?



---

### 7 - Por que o mecanismo de interrupção é fundamental para a implementação da multiprogramação?



---

### 8 - O que são eventos síncronos e assíncronos?



---

### 9 - Dê exemplos de eventos associados ao mecanismo de exceção.



---

### 10 - O que é DMA e qual a vantagem desta técnica?



---

### 11 - Como a técnica de buffering permite aumentar a concorrência em um sistema computacional?



---

### 12 - Em um sistema multiprogramável, seus usuários utilizam o mesmo editor de textos (25oKb), compilador (320Kb), software de e-mail (230 Kb) e uma aplicação corporativa (570 Kb).

### 12.a) Sem a implementação de reentrância, qual o espaço de memória principal ocupado pelos programas quando 10 usuários estiverem utilizando todas as aplicações simultaneamente?



---

### 12.b) Qual o espaço liberado quando o sistema implementa reentrância em todas as aplicações?