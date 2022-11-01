Dado('ter um item add ao carrinho') do
    @cart_page = CartPage.new
    steps %{
        Dado estar na home da livelo
        Quando pesquisar por um produto 
        E selecionar a primeira opção
        E clicar em Adicionar ao carrinho 
        Então o produto deve ser Adicionado ao carrinho corretamente
    }
end
  
Quando('clicar no botao de aumentar a quantidade de item no carrinho') do
  @cart_page.increase_product_quantity
end
  
Então('a quantidade deverá aumentar corretamente') do
  expect(@cart_page).to have_content('2')
end

