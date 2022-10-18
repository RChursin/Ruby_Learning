# Search Area Code Database

dial_book = {
  "New York" => "212",
  "Los Angeles" => "213",
  "Chicago" => "312",
  "Houston" => "713",
  "Philadelphia" => "215",
  "Phoenix" => "602",
  "San Antonio" => "210",
  "San Diego" => "619",
  "Dallas" => "214",
  "San Jose" => "408",
  "Detroit" => "313",
  "Indianapolis" => "317",
  "San Francisco" => "415",
  "Jacksonville" => "904",
  "Columbus" => "614",
  "Austin" => "512",
  "Memphis" => "901",
  "Baltimore" => "410",
  "Charlotte" => "704",
  "Fort Worth" => "817",
  "Milwaukee" => "414",
  "Boston" => "617",
  "El Paso" => "915",
  "Seattle" => "206",
  "Denver" => "303",
  "Washington" => "202",
  "Nashville" => "615",
}

def get_city_names(somehash)
  somehash.keys
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered a city name not in the dictionary"
  end
end