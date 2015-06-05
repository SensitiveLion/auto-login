require "pry"
require "mechanize"

agent = Mechanize.new
reddit = agent.get("https://www.reddit.com/")
reddit_form =  reddit.forms[1]
reddit_form.user = "thing"
reddit_form.passwd = "random"
reddit = agent.submit(reddit_form)
pp reddit
