refreshTimeout=REFRESH_RESULT_TIMEOUT
And(/^Market Prices page is opened$/) do
  on_page(MenuBar).menu_infeasibility_element.when_visible(10)
  on_page(MenuBar).menu_pricestoggle
  expect(on_page(MenuBar).menu_pricestoggle_expand?).to be_truthy
  sleep 2
  on_page(MenuBar).menu_prices
  # p on_page(PricesPage).prices_msg_loading? #always exist
  # wait_for_element(on_page(PricesPage).prices_final_element)
  # on_page(PricesPage).wait_for_ajax(50,"Page did not load within 50 seconds")  # Not working (waiting for 50 seconds)
  on_page(PricesPage).wait_until(50, "prices_final object not found within 50 seconds") do
    # @page.text.include? "Value returned from Ajax call"
    on_page(PricesPage).prices_final?
  end
   expect(on_page(PricesPage).prices_final?).to be_truthy
   expect(on_page(PricesPage).prices_title?).to be_truthy
  # expect(on_page(PricesPage).prices_final?).not_to be_truthy

=begin
  # p on_page(PricesPage).prices_final_element.when_present(60)  # when loading return selenium surrogate element
  # p on_page(PricesPage).prices_final_element.when_visible(60)  # when loading return not visible in 60 seconds
    p on_page(PricesPage).prices_final?                          # false when overloading is not finished
    p on_page(PricesPage).prices_final_element.enabled?          # true when overloading is finished
    p on_page(PricesPage).prices_final_element.disabled?         # false when overloading is finished
    p on_page(PricesPage).prices_final_element.check_visible     # false when overloading is finished
    p on_page(PricesPage).prices_final_element.visible?          # false when overloading is finished
    # p on_page(PricesPage).prices_final_element.when_visible(60)
    # p on_page(PricesPage).prices_final_element.when_present(60)
    debugger
    p on_page(PricesPage).prices_title_element.enabled?
    # sleep 20
=end

  # on_page(PricesPage).prices_final_element.when_present(60).double_click
  on_page(PricesPage).prices_final_element.fire_event('click')
  # on_page(PricesPage).check_prices_final
  # on_page(PricesPage).prices_gridpoints="ABY0111"
  # on_page(PricesPage).prices_selectgridpoint
  on_page(ComObj).com_date
  on_page(PricesPage).prices_fromdate='2016-05-15'
  on_page(PricesPage).prices_fromdate_element.click
  on_page(PricesPage).prices_fromtp='TP 1 (00:30)'
  on_page(PricesPage).prices_todate='2016-05-16'
  on_page(PricesPage).prices_todate_element.click
  on_page(PricesPage).prices_totp="TP 48 (01:30)"

  on_page(PricesPage).prices_selected_gp_elements.each do |span_text|
    p span_text.text()
  end

end


Given(/^Verify default search selection$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  data = table.hashes
  GP = []
  SC = []
  MT = []
  TBP = []
  TPF = []

  data.each do |row|
    row.each do |key, value|
      if key.eql? "Grid_Points"
        GP << value
      elsif key.eql? "Schedule"
        SC << value
      elsif key.eql? "Market_Type"
        MT << value
      elsif key.eql? "TPB"
        SC << value
      elsif key.eql? "TPF"
        MT << value
      end
    end
  end

  puts GP
  puts SC
  puts MT
end
# verifyExpAct(DT['PRICES']['Schedules'],OR['prices_schedules'])

When(/^user click on refresh results button$/) do
  # debugger
  wait_for_element(on_page(ComObj).com_refreshresult_element,2)
  on_page(ComObj).com_refreshresult
  wait_for_element(on_page(ComObj).com_reset_element)
  # p on_page(ComObj).com_reset?
  # p on_page(ComObj).com_reset_element.enabled?
  # wait_for_property(on_page(ComObj).com_refreshresult_element,'disabled',nil)
  on_page(ComObj).com_reset
  # debugger
end

Then(/^user see default search results$/) do

end


# def verifyExpAct(ExSchedules,AcSchedules)
#   ES= ExSchedules.split(",")
# end



