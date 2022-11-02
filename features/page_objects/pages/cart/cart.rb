class CartPage < SitePrism::Page
  element :total_value, '[id^="total-ci"]'
  element :p_message_empty_cart, '.alert-warning'
  element :btn_continue_shopping, '[id^="cc-link-home"]'
  element :btn_proceed_to_checkout, '[id^="ctaCheckout"]'
  elements :btn_increese, '.icon-plus' 
  elements :btn_decreese, '.icon-minus'
  elements :btn_remove, '[id^="remove-ci"]'
  element :qtd_item_display, '[id^="qtd-ci"]'
  element :descount_fild, '[id^="cc-cupom-field"]' 
  element :btn_apply_descount, '[id^="cc-cart-cupom-trigger"]' 

  def add_descount
    descount_fild.set 'cupom invalido'
    descount_fild.send_keys :enter
  end

  def remove_product
    btn_remove[0].click
  end

  def increase_product_quantity
    btn_increese[0].click
  end
  
  def decrease_product_quantity
    btn_decreese[0].click
  end

  def proceed_to_checkout
    btn_proceed_to_checkout.click
  end

  def continue_shopping
    btn_continue_shopping.click
  end

end