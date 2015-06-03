require "pry"
require "mechanize"

agent = Mechanize.new
@instagram = agent.get("https://instagram.com")
binding.pry
log_in = @instagram.link_with(:text => "Continue")

pp login_page
