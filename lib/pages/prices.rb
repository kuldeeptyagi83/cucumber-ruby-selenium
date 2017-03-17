  class PricesPage
    include PageObject
    h1(:prices_title, :xpath => OR['prices_title'])
    checkbox(:prices_final , xpath: OR['prices_final'] )
    checkbox(:prices_interim , xpath: OR['prices_interim'] )
    checkbox(:prices_provisional , xpath: OR['prices_provisional'] )
    checkbox(:prices_nrs , xpath: OR['prices_nrs'] )
    checkbox(:prices_prs , xpath: OR['prices_prs'] )
    checkbox(:prices_wds , xpath: OR['prices_wds'] )
    checkbox(:prices_rtp , xpath: OR['prices_rtp'] )
    checkbox(:prices_rtpavg , xpath: OR['prices_rtpavg'] )
    checkbox(:prices_mtypeenergy , xpath: OR['prices_mtypeenergy'] )
    checkbox(:prices_mtypereserve , xpath: OR['prices_mtypereserve'] )

    link(:prices_mtypereserve , xpath: OR['prices_mtypereserve'] )
    link(:prices_mtypereserve , xpath: OR['prices_mtypereserve'] )

    text_field(:prices_gridpoints , xpath: OR['prices_gridpoints'] )
    link(:prices_selectgridpoint , xpath: OR['prices_selectgridpoint'] )
    text_field(:prices_fromdate , xpath: OR['prices_fromdate'] )
    select_list(:prices_fromtp , xpath: OR['prices_fromtp'] )
    text_field(:prices_todate , xpath: OR['prices_todate'] )
    select_list(:prices_totp , xpath: OR['prices_totp'] )
    span(:prices_msg_loading , xpath: OR['prices_msg_loading'] )

    unordered_list(:prices_select_gpg , xpath: OR['prices_select_gpg'] )
    unordered_list(:prices_select_opt , xpath: OR['prices_select_opt'] )

    spans(:prices_selected_gp , xpath: OR['prices_selected_gps'] )
    spans(:prices_selected_gp , xpath: OR['prices_selected_gps'] )


=begin
  element(:prices_gridpoints) {|b1| b1.text_field(xpath: OR['prices_gridpoints'])}
  element(:prices_selectgridpoint) {|b1| b1.link(xpath: OR['prices_selectgridpoint'])}
  element(:prices_deselectgridpoint) {|b1| b1.link(xpath: OR['prices_deselectgridpoint'])}
  element(:prices_mtypereserve) {|b1| b1.element(xpath: OR['prices_mtypereserve'])}
  element(:prices_date) {|b1| b1.link(xpath: OR['prices_date'])}
  element(:prices_fromdate) {|b1| b1.text_field(xpath: OR['prices_fromdate'])}
  element(:prices_fromtp) {|b1| b1.link(xpath: OR['prices_fromtp'])}
  element(:prices_todate) {|b1| b1.text_field(xpath: OR['prices_todate'])}
  element(:prices_totp) {|b1| b1.link(xpath: OR['prices_totp'])}
  element(:reset) {|b1| b1.link(xpath: OR['reset_xpath'])}
=end
  # element(:refreshresult) {|b1| b1.button(xpath: OR['refreshresult_xpath'])}
  end

