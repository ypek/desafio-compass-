Dado('estar na home da livelo') do
  @Home = Home.new
  @Home.load
end

Quando('pesquisar por um produto') do 
  @Home.search_field.set 'ventilador'
  @Home.btn_search.click
end

Quando('selecionar a primeira opção') do
  @Home.first_item.click
end

Quando('clicar em Adicionar ao carrinho') do
  @Home.add_to_cart.click
  find.element('#cc-prodDetails-refusePriceClubeDiscount').click
end

Então('o produto deve ser Adicionado ao carrinho corretamente') do
  expect(@home).to have_content('Resumo do pedido')
end