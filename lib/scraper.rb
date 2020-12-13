require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

courses_data = doc.css(".text-4GLMvr")

courses = []
i = 0
while i < 4
    courses << courses_data.css(".title-oE5vT4")[i].text
    i += 1
end

courses