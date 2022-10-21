class Student
  attr_accessor :last_name, :first_name,:email, :username, :password  # This is a shortcut for creating getter and setter methods for each instance variable

  def initialize(firstname, lastname, username, email, password) # Constructor method that is called when you call Student.new
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end  # Setter methods

  def to_s # This method is called when you call puts on an object
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
  end  # End to_s method

end  # End of Student class

student1 = Student.new("Roman", "Chursin", "RomanChursin", "rchursin@test.com", "password1")
student2 = Student.new("Jack", "Sparrow", "JackSparrow", "jspar@test.com", "password2")
puts student1
puts student2