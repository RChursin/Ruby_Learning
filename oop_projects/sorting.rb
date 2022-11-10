# Sorting arrays

def alphabetize(arr, rev=false)  # Method takes 2 arguments
  if rev  # If rev is true
    arr.sort { |item1, item2| item2 <=> item1 } # Sort array in reverse order
  else # If rev is false
    arr.sort { |item1, item2| item1 <=> item2 } # Sort array in normal order
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"] # Create array of books

puts "A-Z: #{alphabetize(books)}" # Print array of books in normal order
puts "Z-A: #{alphabetize(books, true)}" # Print array of books in reverse order