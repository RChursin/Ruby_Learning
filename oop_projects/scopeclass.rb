
class Computer # Class variable

  $manufacturer = "Mango Computer, Inc." # global variable
  @@files = {hello: "Hello, world!"}

  def initialize(username, password) # Constructor method that is called when you call Computer.new
    @username = username # Instance variable
    @password = password # Instance variable
  end

  def current_user # Getter method
    @username
  end

  def self.display_files # Class method
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.