Quando('clicar no botao de continuar comprando') do
    @cart_page = CartPage.new
    @cart_page.continue_shopping
  end
  
  Então('deverá retornar o usuário a home do site') do
    expect(@home_page).to have_content('Usar Pontos')
  end