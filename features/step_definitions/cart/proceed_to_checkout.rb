Quando('clicar no botao de prosseguir para o checkout') do
  @cart_page = CartPage.new
  @cart_page.proceed_to_checkout
end
  
Então('o checkout deverá ser iniciado corretamente') do
  expect(@cart_page).to have_content('Quero entrar na minha conta Livelo') #Poderia Fazer Logado se tivesse mais tempo
end