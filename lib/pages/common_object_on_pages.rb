class ComObj
include PageObject
link(:com_date , xpath: OR['com_date'] )
button(:com_refreshresult, :xpath => OR['com_refreshresult'])
link(:com_reset , xpath: OR['com_reset'] )
end