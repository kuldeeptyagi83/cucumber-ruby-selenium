 # World(PageObject::PageFactory)
class DashBoardPage
  include PageObject
  # page_url('http://uat.electricityinfo.co.nz/')
  link(:dashboard_autoplay, :xpath => OR['dashboard_autoplay_xpath'])
  # link(:dashboard_autoplay, :css => OR['dashboard_autoplay_css'])
  link(:dashboard_login, :xpath => OR['dashboard_login'])
  link(:dashboard_signup, :xpath => OR['dashboard_signup'])
  div(:dashboard_sigin_message, :xpath => OR['dashboard_sigin_message'])
end

