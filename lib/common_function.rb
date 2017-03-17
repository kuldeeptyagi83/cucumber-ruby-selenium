module CommonFunc
  # def CommonFunc.get_url route
  #   YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["urls"][route]
  # end
  # wait_for_element(on_page(ComObj).com_refreshresult_element,2)
  def wait_for_element(ele,timeout=REFRESH_RESULT_TIMEOUT)
 # debugger
    refreshTimeout=timeout
    until ele.exists? == true or refreshTimeout==0 do
      sleep 1
      refreshTimeout=refreshTimeout-1
      p "wait_for ele #{refreshTimeout}"
    end
  end
  # wait_for_property(on_page(ComObj).com_refreshresult_element,'disabled',nil)
  def wait_for_property(ele,pro,val,timeout=REFRESH_RESULT_TIMEOUT)
    # debugger
    refreshTimeout=timeout
    until ele.attribute(pro) == val or refreshTimeout==0 do
      sleep 1
      refreshTimeout=refreshTimeout-1
      p "wait_for pro #{refreshTimeout}"
      p ele.attribute(pro)
    end
  end

end