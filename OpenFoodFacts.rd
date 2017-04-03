require 'open-uri'
require 'json'

loop do
  puts "Entrer un numéro de Code Barres :"
  bar_code = gets.chomp

  url="http://fr.openfoodfacts.org/api/vO/produit/#{bar_code}.json"

  json = open(url).read

  data= JSON.parse(json)

  puts data['product']['product_name']

end
