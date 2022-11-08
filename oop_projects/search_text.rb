puts "Text to search through: " # Prompt user for text
text = gets.chomp # Get user input for text
puts "Word to redact: " # Prompt user for word to redact
redact = gets.chomp # Get user input for word to redact

words = text.split(" ") # Split text into array of words

words.each do |word| # Iterate through each word
  if word != redact # If word does not equal redact
    print word + " " # Print word
  else
    print "REDACTED " # Print redacted
  end
end
