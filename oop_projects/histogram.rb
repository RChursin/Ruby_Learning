puts "Text please: " # Prompt user for text
text = gets.chomp # Get user input for text

words = text.split(" ") # Split text into array of words
frequencies = Hash.new(0) # Create new hash with default value of 0
words.each { |word| frequencies[word] += 1 } # Iterate through each word and increment frequency by 1
frequencies = frequencies.sort_by {|a, b| b } # Sort hash by value
frequencies.reverse! # Reverse hash
frequencies.each { |word, frequency| puts word + " " + frequency.to_s } # Iterate through each word and print word and frequency
