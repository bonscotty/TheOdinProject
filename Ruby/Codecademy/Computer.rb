class Computer
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created at #{time} by #{@username}. "
  end
  
  def Computer.get_users
    @@users
  end

  def printFiles()
    @files
  end
end

my_computer = Computer.new("Navin", 123456)
her_computer = Computer.new("Kat", 42069)

my_computer.create("Pornlinks")
my_computer.create("Pornlinks2")

her_computer.create("Kuromi")
her_computer.create("MyMelody")

puts Computer.get_users()

puts my_computer.printFiles()
puts my_computer.printFiles()

puts her_computer.printFiles()
puts her_computer.printFiles()