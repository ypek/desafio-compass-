Quando('clicar no botao de remover item do carrinho') do
  @cart_page = CartPage.new
  @cart_page.remove_product
end
  
Então('o item deverá ser removido corretamente') do
  expect(@cart_page).to have_content('Ainda não existem itens no seu carrinho') 
end