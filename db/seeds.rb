require 'json'
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

json = open(url).read
objs = JSON.parse(json)
objs.each do |obj|
    obj[1].each do |ingredient|
        Ingredient.create(name: ingredient.to_a[0][1])
    end
end

puts 'Finished'