#language: pt

Funcionalidade: Adicionar um produto ao carrinho

Cenário: Adicionar um produto ao carrinho
  Dado estar na home da livelo
  Quando pesquisar por um produto 
  E selecionar a primeira opção
  E clicar em Adicionar ao carrinho 
  Então o produto deve ser Adicionado ao carrinho corretamente

