require 'watir'
browser = Watir::Browser.new :chrome, url: "http://192.168.1.8:4444/wd/hub"

browser.goto 'google.com'
search_field = browser.text_field name: 'q'
search_field.set 'Hello World!'
browser.send_keys :enter

# Just to see the browser
sleep 5

puts browser.title
# => 'Hello World! - Google Search'
browser.quit