require "pry"
require "mechanize"

agent = Mechanize.new
gmail = agent.get("https://www.gmail.com/")
gmail_form =  gmail.form()
gmail_form.Email = "testemail"
gmail_form.Passwd = "password"
pp gmail
