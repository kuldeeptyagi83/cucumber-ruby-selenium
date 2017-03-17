# include PageObject::PageFactory
#  include PageObject
# When(/^User open WITS website$/) do
#   visit DashBoardPage
# end

# When(/^User login with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  When(/^User login with username and password$/) do
  on_page(DashBoardPage).dashboard_autoplay_element.when_visible(20).click
  p PageObject.default_page_wait
  expect(on_page(DashBoardPage).dashboard_login?).to be_truthy
  on_page(DashBoardPage).dashboard_login
  on_page(LoginPage).login
  # on_page(DashBoardPage).refresh
end

Given (/^User is logged-in$/) do
  # on_page(MenuBar).wait_for_ajax(2,"h")
  on_page(MenuBar).wait_until(5, "menu_infeasibility object not found within 5 seconds") do
    # @page.text.include? "Value returned from Ajax call"
    on_page(MenuBar).menu_infeasibility?
  end
  on_page(MenuBar).menu_infeasibility_element.when_visible(10)
  expect(on_page(MenuBar).menu_infeasibility?).to be_truthy
  # debugger
  if on(MenuBar).menu_logout?
  elsif on(MenuBar).menu_logout? == false
    on(MenuBar).menu_slider_element.click
    on(MenuBar).menu_logout_element.when_visible(20)
    expect(on_page(MenuBar).menu_logout?).to be_truthy
  end
end

When(/^User clicks on logout link$/) do
    on(MenuBar).menu_logout
end

Then(/^User should be logged-out successfully$/) do
  on(DashBoardPage).dashboard_login_element.when_present(10)
  expect(on_page(DashBoardPage).dashboard_login?).to be_truthy
end

# # Then(/^I contact customer service with order reference "([^"]*)" and message "([^"]*)"$/) do |order_ref, message|
# #   contact_customer_service(order_ref,message)
# # end
