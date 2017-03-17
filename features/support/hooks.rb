=begin
Before do |scenario|
  ENV['BROWSER'] = "chrome" if ENV['BROWSER'].nil?
  if(ENV['BROWSER']=='chrome')
    puts "ENV['BROWSER'] #{ENV['BROWSER']}"
    ##Chrome
    driverpathC = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")
    ##------------------------------------------------------------------
    @browser = Selenium::WebDriver.for :chrome , driver_path: driverpathC
    ##Watir
    # Selenium::WebDriver.for :chrome , driver_path: driverpathC
    # @browser = Watir::Browser.new :chrome
    #------------------------------------------------------------------
  elsif(ENV['BROWSER']=='firefox')
    puts "ENV['BROWSER'] #{ENV['BROWSER']}"
    ##FireFox
    driverpathF = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","geckodriver.exe")
    Selenium::WebDriver::Firefox::Binary.path="C:/Users/Kuldeep.Kumar/AppData/Local/Mozilla Firefox/firefox.exe"
    ##------------------------------------------------------------------
    @browser=Selenium::WebDriver.for :firefox, driver_path: driverpathF
    # ##WAtir
    # Selenium::WebDriver.for :firefox, driver_path: driverpathF
    # @browser = Watir::Browser.new :firefox
    ##--------------------------------------------------
  elsif(ENV['BROWSER']=='ie')
    puts "ENV['BROWSER'] #{ENV['BROWSER']}"
    ##IE
    driverpathI = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","IEDriverServer.exe")
    ##------------------------------------------------------------------
    @browser = Selenium::WebDriver.for :ie, driver_path: driverpathI
    ##Watir
    # Selenium::WebDriver.for :ie , driver_path: driverpathI
    # @browser = Watir::Browser.new :ie
    #------------------------------------------------------------------
  end
  @browser.get "https://uat.electricityinfo.co.nz/"

end

Before('@Prices') do
  $dunit ||= false
  return $dunit if $dunit
  puts "Global"
  $dunit = true
end
=end


=begin

module HasBrowser
  at_exit do
    @@browser.quit
  end

  def
  browser
    @@browser
  end
end
=end

# puts scenario.feature.name
# puts scenario.scenario_outline.feature.name
# puts scenario.name
# puts scenario.scenario_outline.name
# case scenario
#   when 'Login'
#   puts ENV['BROWSER']
#   ENV['BROWSER'] = "chrome" if ENV['BROWSER'].nil?
#   if(ENV['BROWSER']=='firefox')
#     # driverpath = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","geckodriver.exe")
#     # Selenium::WebDriver::Firefox.path=driverpath
#     # Selenium::WebDriver::Firefox.path= 'C:\Users\Kuldeep.Kumar\AppData\Local\Mozilla Firefox\firefox.exe'
#     # profile = Selenium::WebDriver::Firefox::Profile.from_name 'seleniumprofile'
#     # @browser = Watir::Browser.new :firefox, :profile => profile
#     Selenium::WebDriver::Firefox.path = 'C:\Users\Kuldeep.Kumar\AppData\Local\Mozilla Firefox\firefox.exe'
#     profile = Selenium::WebDriver::Firefox::Profile.new
#     profile['network.proxy.type']= 0
#     # profile['network.proxy.http'] = 'localhost'
#     # profile['network.proxy.http_port'] = 9090
#
#     # driver = Selenium::WebDriver.for :firefox, :profile => profile
#     # Selenium::WebDriver::Firefox.path= driverpath
#     # driver = Selenium::WebDriver.for :firefox, marionette: true
#     @browser = Watir::Browser.new :firefox, :profile => profile              #Watir
#     # @browser = Selenium::WebDriver.for :marionette, :profile => profile     #Webdriver
#   elsif(ENV['BROWSER']=='chrome')
#     driverpath = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")
#     Selenium::WebDriver::Chrome.driver_path= driverpath
#     @browser = Watir::Browser.new ENV['BROWSER'].to_sym              #Watir
#     # @browser = Selenium::WebDriver.for ENV['BROWSER'].to_sym       #Webdriver
#   elsif(ENV['BROWSER']=='ie')
#     driverpath = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","IEDriverServer.exe")
#     Selenium::WebDriver::IE.driver_path= driverpath
#     @browser = Watir::Browser.new ENV['BROWSER'].to_sym              #Watir
#     # @browser = Selenium::WebDriver.for ENV['BROWSER'].to_sym       #Webdriver
#     # Selenium::WebDriver::Wait.new(:timeout => 1000) # seconds
#   end
#   @browser.window.maximize
#   #   else
#   #     puts "nothing"
#   # end
#
# end

# After do |scenario|
#   # @browser.cookies.clear
#    @browser.quit
#   @browser.close
#   puts "Oh dear" if scenario.failed?
# end

# at_exit do
#   @browser.close
# end

# After('@Logout') do |scenario|
#   if scenario.failed?
#     Dir::mkdir('screenshots') if not File.directory?('screenshots')
#     screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
#     @browser.driver.save_screenshot(screenshot)
#     embed screenshot, 'image/png'
#   end
#   @browser.cookies.clear
#   @browser.quit
# end
