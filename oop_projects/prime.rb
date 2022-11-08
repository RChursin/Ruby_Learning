def prime(n) # Method takes 1 argument
  puts "That's not an integer." unless n.is_a? Integer # Print this unless n is an integer
  is_prime = true # Set is_prime to true
  for i in 2..n-1 # Iterate through each number from 2 to n-1
    if n % i == 0 # If n is divisible by i
      is_prime = false # Set is_prime to false
    end
  end
  if is_prime # If is_prime is true
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)
