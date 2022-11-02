#language: pt

@regresison
@add_cart_product
Funcionalidade: Adicionar um produto ao carrinho

Cenário: Adicionar um produto ao carrinho
  Dado estar na home da livelo
  Quando pesquisar por um produto 
  E selecionar a primeira opção
  E clicar em Adicionar ao carrinho 
  Então o produto deve ser Adicionado ao carrinho corretamente

@increase_qtd_items_cart
Cenário: Aumentar a quantidade de um item no carrinho
  Dado ter um item add ao carrinho
  Quando clicar no botao de aumentar a quantidade de item no carrinho
  Então a quantidade deverá aumentar corretamente

@decrease_qtd_items_cart
Cenário: Diminuir a quantidade de um item no carrinho
  Dado ter um item add ao carrinho
  Quando clicar no botao de diminuir a quantidade de item no carrinho
  Então a quantidade deverá diminuir corretamente

@remove_item_cart
Cenário: Remover um item do carrinho
  Dado ter um item add ao carrinho
  Quando clicar no botao de remover item do carrinho
  Então o item deverá ser removido corretamente

@proceed_to_checkout
Cenário: Prosseguir para o checkout
  Dado ter um item add ao carrinho
  Quando clicar no botao de prosseguir para o checkout
  Então o checkout deverá ser iniciado corretamente

@continue_shopping
Cenário: Continuar comprando
  Dado ter um item add ao carrinho
  Quando clicar no botao de continuar comprando
  Então deverá retornar o usuário a home do site

@add_descount_error
Cenário: Adicionar um desconto com erro
  Dado ter um item add ao carrinho
  Quando clicar no campo de desconto
  E digitar um cupom inválido
  Então deverá retornar uma msg de erro ao usuario


