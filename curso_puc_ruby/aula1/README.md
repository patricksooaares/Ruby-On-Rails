# Aula 1: Ruby do zero

Para quem nunca escreveu uma linha de Ruby. No fim da manhã você lê e escreve
código simples com confiança.

## O que você vai aprender

- mostrar coisas na tela (`puts`, `p`) e descobrir o tipo de um valor (`.class`)
- variáveis, números, texto, `true`/`false` e `nil`
- interpolação: `"Bom dia, #{nome}"`
- condicionais: `if`, `elsif`, `else`, `unless`
- repetição: `each`, `times`, `while`, faixas (`1..3`)
- coleções: Array (lista) e Hash (dicionário)
- métodos: `def`, argumentos, valor padrão e retorno implícito

## Armadilhas que você já leva de hoje

Elas voltam na aula 4, quando a IA cometer exatamente esses erros:

| Armadilha | O que acontece |
|-----------|----------------|
| `7 / 2` | dá `3`, não `3.5`: divisão entre inteiros descarta o resto |
| `0.1 + 0.2` | dá `0.30000000000000004`, não `0.3` |
| `"abc".to_i` | dá `0`, sem reclamar |
| `0` e `""` | são **verdadeiros** em Ruby (só `false` e `nil` são falsos) |
| `produtor[:nome]` vs `produtor["nome"]` | símbolo e texto são chaves diferentes |
| `puts` dentro de método | mostra na tela e devolve `nil` |

## Ordem da manhã

1. Rode os exemplos, um por um, e leia o que sai:
   ```
   ruby aula1/exemplos/01_primeiros_passos.rb
   ruby aula1/exemplos/02_numeros_e_armadilhas.rb
   ruby aula1/exemplos/03_condicionais.rb
   ruby aula1/exemplos/04_colecoes.rb
   ruby aula1/exemplos/05_repeticao.rb
   ruby aula1/exemplos/06_metodos.rb
   ```
   O `03_condicionais.rb` imprime `warning: string literal in condition`. É o
   próprio Ruby apontando a armadilha da aula: um texto como `""` é sempre
   verdadeiro num `if`.
2. Resolva os exercícios em `aula1/exercicios/`.
3. Verifique:
   ```
   ruby bin/verificar aula1        # todos
   ruby bin/verificar aula1 02     # só o exercício 02
   ```

Os testes falham enquanto você não resolve. É assim mesmo: ler a mensagem de
falha faz parte de aprender.

## Dica

Use o `irb` (digite `irb` no terminal) para testar qualquer dúvida na hora.
`7 / 2`, `"abc".to_i`, `[1,2,3].class`. Ele responde na hora.
