class HomePage < SitePrism::Page
  set_url '/home'
  element :search_field, '.search-query'
  element :btn_search, '#span-searchIcon'
  element :btn_add_to_cart, '#cc-prodDetails-addToCart'
  elements :product_results, '.product-list__element'
  element :no_descount, '#cc-prodDetails-refusePriceClubeDiscount'

  def search_for(item)
    search_field.set item
    btn_search.click
  end

  def click_on_product_results
    product_results[0].click
  end

  def add_to_cart
    btn_add_to_cart.click
  end

  def click_no_descount
    no_descount.click
  end

end

