Quando('clicar no botao de diminuir a quantidade de item no carrinho') do
    @cart_page = CartPage.new
    @cart_page.decrease_product_quantity
  end
  
  Então('a quantidade deverá diminuir corretamente') do
    expect(@cart_page).to have_content('1')
  end