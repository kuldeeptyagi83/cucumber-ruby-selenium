require 'watir'
require 'require_all'
require 'page-object'
require 'selenium-webdriver'
require 'pretty_face'
require 'cucumber'
require 'page-object/page_factory'
require 'data_magic'
require 'byebug'
OR = YAML.load_file './config/object_repository.yml'
DT = YAML.load_file './config/data.yml'
# require './lib/page_helper'
# require './lib/data_helper'
require './lib/common_function'
# require 'rspec/collection_matchers'
require 'rspec'
require_all './lib/pages'

REFRESH_RESULT_TIMEOUT=60

#World DataHelper
# World PageHelper
World CommonFunc
World(PageObject::PageFactory)
PageObject.default_page_wait=20
PageObject.javascript_framework = :jquery
# PageObject.javascript_framework = :angularjs
# World HasBrowser

ENV['BROWSER'] = "chrome" if ENV['BROWSER'].nil?
if(ENV['BROWSER']=='chrome')
  puts "ENV['BROWSER'] #{ENV['BROWSER']}"
  ##Chrome
  driverpathC = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")
  ##------------------------------------------------------------------
  browser = Selenium::WebDriver.for :chrome , driver_path: driverpathC
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
  browser=Selenium::WebDriver.for :firefox, driver_path: driverpathF
  # ##WAtir
  # Selenium::WebDriver.for :firefox, driver_path: driverpathF
  # @browser = Watir::Browser.new :firefox
  ##--------------------------------------------------
elsif(ENV['BROWSER']=='ie')
  puts "ENV['BROWSER'] #{ENV['BROWSER']}"
  ##IE
  driverpathI = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","IEDriverServer.exe")
  ##------------------------------------------------------------------
  browser = Selenium::WebDriver.for :ie, driver_path: driverpathI
  ##Watir
  # Selenium::WebDriver.for :ie , driver_path: driverpathI
  # @browser = Watir::Browser.new :ie
  #------------------------------------------------------------------
end
browser.get DT['ENV']['URL']
Before do
  @browser = browser
end

# at_exit do
#   browser.close
# end