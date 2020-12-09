Given('click menu shop') do
    $driver.get "http://practice.automationtesting.in"
    $driver.manage.window.full_screen
    $driver.find_element(:css, "#menu-item-40").click
    $driver.manage.timeouts.implicit_wait = 2
  end
  
  When('adjust the filter by price') do
    #move price slider 
    $slider = $driver.find_element(:css, ".ui-slider-handle")
    $driver.action.drag_and_drop_by($slider[0], 30, 0).perform
    $driver.action.drag_and_drop_by($slider[1], -30, 0).perform

  end
  
  Then('view books only between {int} to {int} rps price') do |int, int2|
  
    
  end