Dado('estar na home da livelo') do
    @home_page = HomePage.new
    @home_page.load
end

Quando('pesquisar por um produto') do
  @home_page.search_for(Factory::Static.get_random_products_names)
end

Quando('selecionar a primeira opção') do
  @home_page.click_on_product_results
end

Quando('clicar em Adicionar ao carrinho') do
  @home_page.add_to_cart
  @home_page.click_no_descount
end

Então('o produto deve ser Adicionado ao carrinho corretamente') do
  expect(@home_page).to have_content('Resumo do pedido')
end