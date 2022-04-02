### Teoria

A teoria dos tipo é um sistema formal no qual cada "termo" tem um "tipo". Como em linguagens de programação, o tipo dita as operações que podem ser realizadas em um termo e, para variáveis, os possíveis valores que ela pode ser substituída.

Um termo e seu tipo geralmente são escritos juntos como " term  : type ". Um tipo comum para incluir em uma teoria de tipos são os números naturais , muitas vezes escritos como "ℕ" ou "nat". Outro são os valores lógicos booleanos . Assim, alguns termos muito simples com seus tipos são:
- 0 : ℕ
- 42 : ℕ
- true : bool

Na teoria dos tipos, uma chamada de função é chamada de "aplicação de função". A aplicação de função recebe um termo de um determinado tipo e resulta em um termo de outro tipo determinado:
- add 0 0 : ℕ
- add 2 3 : ℕ
- add 1 (add 1 (add 1 0)) : ℕ

Os termos também podem conter variáveis. As variáveis ​​sempre têm um tipo. Assim, assumindo que "x" e "y" são variáveis ​​do tipo "nat", os seguintes também são termos válidos:
- x : ℕ
- x + 2 : ℕ
- x + (x + y): ℕ

---

### Computação

A teoria dos tipos tem uma notação de computação embutida. Os seguintes termos são todos diferentes:
- 1 + 4: ℕ
- 3 + 2: ℕ
- 0 + 5: ℕ

Mas todos eles computam o termo "5 : ℕ". Na teoria dos tipos, usamos as palavras "*reduction*" e "*reduce*" para nos referirmos à computação. Então, dizemos que "0 + 5 : ℕ" *reduces* a "5 : ℕ". Pode ser escrito "0 + 5 : ℕ → 5: ℕ".

Termos que contêm variáveis ​​também podem ser reduzidos. Assim, o termo "add x (add 1 4): ℕ" se reduz a "add x 5: ℕ". (Podemos reduzir qualquer subtermo dentro de um termo, graças ao *teorema de Church-Rosser*).

> Um termo sem quaisquer variáveis ​​que não possam ser reduzidas é um "**termo canônico**". Todos os termos acima se reduzem a "5 : nat", que é um termo canônico. Os termos canônicos dos números naturais são:

```bash
0: ℕ
1: ℕ
2: ℕ
etc.
```

---

- [Typed lambda calculus](https://en.wikipedia.org/wiki/Typed_lambda_calculus)
- [Intuitionistic type theory](https://en.wikipedia.org/wiki/Intuitionistic_type_theory)
- [Calculus of constructions](https://en.wikipedia.org/wiki/Calculus_of_constructions)
- [Constructivism (philosophy of mathematics)](https://en.wikipedia.org/wiki/Constructivism_(philosophy_of_mathematics))
- [Homotopy type theory](https://en.wikipedia.org/wiki/Homotopy_type_theory)