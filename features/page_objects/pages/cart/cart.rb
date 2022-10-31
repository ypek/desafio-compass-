class CartPage < SitePrism::Page
  
    element  :total_value, '#total_product'
    element  :p_message_empty_cart, '.alert-warning'
    element  :btn_continue_shopping, 'a[title="Continue shopping"]'
    element  :btn_proceed_to_checkout, 'a[title^="Proceed"]', visible: :visible
  
    def exclude_product(index = 0)
      products[index].btn_exclude.click
    end
  
    def increase_product_quantity(index = 0)
      products[index].btn_increase.click
    end
  
    def decrease_product_quantity(index = 0)
      products[index].btn_decrease.click
    end
  
end