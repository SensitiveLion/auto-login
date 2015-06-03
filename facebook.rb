require "pry"
require "mechanize"

agent = Mechanize.new
@facebook = agent.get("https://www.facebook.com/")
facebook_form =  @facebook.form()
facebook_form.email = "passidomo.linkedin@gmail.com"
facebook_form.pass = "rY1L$$0fCZ"
@facebook = agent.submit(facebook_form)
@home = agent.get("https://www.facebook.com/")

pp @home
binding.pry

