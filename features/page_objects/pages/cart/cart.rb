class CartPage < SitePrism::Page
  element :total_value, '[id^="total-ci"]'
  element :p_message_empty_cart, '.alert-warning'
  element :btn_continue_shopping, '[id^="cc-link-home"]'
  element :btn_proceed_to_checkout, '[id^="ctaCheckout"]'
  elements :btn_increese, '.icon-plus' 
  elements :btn_decreese, '.icon-minus'
  elements :btn_remove, '[id^="remove-ci"]'
  
  def remove_product
    btn_remove[0].click
  end
  
  def increase_product_quantity
    btn_increese[0].click
  end
  
  def decrease_product_quantity
    btn_decreese[0].click
  end

  def remove_all_products
    while has_btn_remove?
      btn_remove[0].click
    end
  end

  def proceed_to_checkout
    btn_proceed_to_checkout.click
  end

  def decrease_product_quantity_to_one
    while has_btn_decreese?
      btn_decreese[0].click
    end
  end

  def continue_shopping
    btn_continue_shopping.click
  end

end