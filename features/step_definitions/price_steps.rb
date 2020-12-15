Given('click menu shop') do
    $driver.get "http://practice.automationtesting.in"
    $driver.manage.window.full_screen
    $driver.find_element(:css, "#menu-item-40").click
    $driver.manage.timeouts.implicit_wait = 2
  end
  
  When('adjust the filter by price') do
    #move price slider 
    $slider = $driver.find_elements(:css, ".ui-slider-handle")
    $driver.action.drag_and_drop_by($slider[0], 0, 0).perform
    $driver.action.drag_and_drop_by($slider[1], 30, 0).perform #chưa hiểu rõ cơ chế sao lấy được đúng giá trị tiền
  end
  
  Then('view prices book') do 
    $price_from = expect($driver.find_element(:css, ".from").text).to include("₹150")
    $price_to = expect($driver.find_element(:css, ".to").text).to include("₹500")
  end