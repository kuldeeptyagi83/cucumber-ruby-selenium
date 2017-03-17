=begin
module PageHelper


  # http://watirmelon.com/2011/06/07/removing-local-page-references-from-cucumber-steps/
  # http://stackoverflow.com/questions/3424782/ruby-on-rails-how-do-i-check-if-a-variable-in-an-instance-of-a-class
  # http://www.wellho.net/mouth/2601_Ruby-is-a-v-instance-of-what-is-the-difference-.html

  def visit page_class, &block
    # puts 'in visit'
    on page_class, true, &block
    puts "1"
  end

  def on page_class, visit=false, &block
    page_class = class_from_string(page_class) if page_class.is_a? String
    puts "2"
    page = page_class.new @browser, visit
    puts "after page object"
    block.call page if block
    puts "5"
    page
  end

  private

 #http://stackoverflow.com/questions/3163641/get-a-class-by-name-in-ruby

  def class_from_string(str)
    str.split('::').inject(Object) do |mod, class_name|
      mod.const_get(class_name)
    end
  end

end


module HasBrowser
  # @@browser = Selenium::WebDriver.for :firefox
  driverpathF = File.join(File.absolute_path('..', File.dirname(__FILE__)),"browsers","geckodriver.exe")
  Selenium::WebDriver::Firefox::Binary.path="C:/Users/Kuldeep.Kumar/AppData/Local/Mozilla Firefox/firefox.exe"
  ##------------------------------------------------------------------
  @@browser=Selenium::WebDriver.for :firefox, driver_path: driverpathF
  @@browser.get "https://uat.electricityinfo.co.nz/"
  at_exit { @@browser.quit }
  # def browser
  #   @browser
  # end
end

=end
=begin
module Abc
   def self.pr
     puts "self"
   end
  def sh
    puts show
  end
end
p Abc.pr
p Abc.sh=end
