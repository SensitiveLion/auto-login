require "pry"
require "mechanize"

agent = Mechanize.new
facebook = agent.get("https://www.facebook.com/")
facebook_form =  facebook.form()
facebook_form.email = "passidomo.linkedin@gmail.com"
facebook_form.pass = "rY1L$$0fCZ"
facebook = agent.submit(facebook_form)
home = facebook.link_with(text: "Skip to News Feed").click
home_form = home.form()
home_form.q = "this is a test"
home = agent.submit(home_form)
pp home
binding.pry

