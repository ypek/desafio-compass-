After('@add_item_cart') do
    Capybara.current_session.driver.quit
end

After('@increase_qtd_items_cart') do
    Capybara.current_session.driver.quit
end

After('@decrease_qtd_items_cart') do
    Capybara.current_session.driver.quit
end

After('@remove_item_cart') do
    Capybara.current_session.driver.quit
end

After('@remove_all_items_cart') do
    Capybara.current_session.driver.quit
end



