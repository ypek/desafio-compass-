class Home < SitePrism::Page
    set_url '/home'
    element :search_field, ''
    element :btn_search, '#wi7700001-search-typeahead-id > div.header__btn-container > button > span.icon-search.bsearch'
    element :btn_add_to_cart, '#wi4300078-product-filter-box-catalog-id > div > div.add_to_cart > div.add_to_cart__btn_container > button'
    element :first_item, '#CC-product-grid-title-LVL6995-00 > div'
end
