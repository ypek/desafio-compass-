Quando('clicar no campo de desconto') do
  @cart_page = CartPage.new
  @cart_page.descount_fild.click
end
  
Quando('digitar um cupom inválido') do
  @cart_page.add_descount
  @cart_page.btn_apply_descount.click
end
  
Então('deverá retornar uma msg de erro ao usuario') do
  expect(@cart_page).to have_content('Cupom não encontrado. Verifique se digitou corretamente ou suas regras de uso.')
end