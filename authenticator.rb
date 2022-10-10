# Authenticator project:

# Users array where username and password are stored
users = [
  { username: "Roman".downcase, password: "test1" },
  { username: "Jack".downcase, password: "test2" },
  { username: "Victoria".downcase, password: "test3" },
  { username: "Alyssa".downcase, password: "test4" },
  { username: "Alex".downcase, password: "test5" }
]

# Authentication method to check and verify if username/password combination exists
def auth_user(username, password, list_of_users) # Method takes 3 arguments
  list_of_users.each do |user_record| # Iterate through each user record
    if user_record[:username] == username && user_record[:password] == password # If username and password match
      return user_record # Return user record
    end # End if statement
  end # End each loop
  "Credentials were not correct" # Return this if username/password combination does not exist
end # End method

# Program execution flow
puts "Welcome to the authenticator" # Welcome message
25.times { print "-" } # Print 25 dashes
puts # Print new line
puts "This program will take input from the user and compare password" # Program description
puts "If password is correct, you will get back the user object" # Program description

attempts = 0 # Set attempts to 0
while attempts < 5 # While attempts is less than 5
  print "Username: " # Prompt user for username
  username = gets.chomp # Get user input for username
  print "Password: " # Prompt user for password
  password = gets.chomp  # Get user input for password
  authentication = auth_user(username, password, users) # Call authentication method and store result in variable
  puts authentication # Print authentication variable
  puts "Press n to quit or any other key to continue: " # Prompt user to quit or continue
  input = gets.chomp.downcase # Get user input and store in variable
  break if input == "no" # Break loop if user input is "no"
  attempts += 1 # Increment attempts by 1
end # End while loop
puts "You have exceeded the number of attempts" if attempts == 5 # Print this if attempts is equal to 5
# End of program


'''
# Output:

Welcome to the authenticator
-------------------------
This program will take input from the user and compare password
If password is correct, you will get back the user object
Username: Roman
Password: password1
{:username=>"roman", :password=>"password1"}
'''