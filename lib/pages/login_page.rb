class LoginPage
  include PageObject
  # text_field(:login_username, :id => OR['login_username_id'])
  text_field(:login_username, :xpath => OR['login_username'])
  text_field(:login_password, :id => OR['login_password_id'])
  button(:login_login, :name => OR['login_login_name'])
  # text_field(:login_login, :value => OR['login_login_value'])
  # text_field(:login_login, :xpath => OR['login_login_xpath'])

  def login
    # puts "UserNAme #{username}."
    self.login_username_element.when_present(30)
    # expect(self.login_username?).to be_truthy
    self.login_username= DT['ENV']['Username']
    self.login_password= DT['ENV']['Password']
    self.login_login
  end

  # def login_yml(options={})
  #   # options = options.with_indifferent_access
  #   # options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
  #   email.set data_yml_hash['username']
  #   password.set data_yml_hash['password']
  #   signin_button.click
  # end

  def get_search_filter_elements
    element_methods = self.class.instance_methods(false).find_all{ |m| m =~ /_element$/ }
    elements = element_methods.collect{ |m| self.send(m) }
  end
end
