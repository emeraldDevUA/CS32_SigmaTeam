require 'open-uri'
require 'nokogiri'

# Функція для отримання списку статей зі сторінки категорії
def get_articles_from_category(url)
  page = Nokogiri::HTML(URI.open(url))
  page.css('.mw-category-group ul li a').map { |link| link['title'] }
end


category_url = "https://en.wikipedia.org/wiki/Category:Online_retailers_of_the_United_States"

# Отримання списку статей
articles = get_articles_from_category(category_url)

puts "Articles in the category 'Online retailers of the United States':"
puts articles