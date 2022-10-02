class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
    @pin = 1234
  end
  
  public
  def display_balance(pin_number)
    checkpin(pin_number) ? "Balance: $#{@balance}." : "pin_error"
  end

  def withdraw(amount)
    if checkpin
      if !checkBal(amount)
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      end
    end
  end

  private
  def checkpin()
    puts "Enter pin for: #{@name}"
    #_pin = gets 
    if @pin != 1234 #_pin.to_i #gets takes integers by default 
      puts "Invalid PIN. Please try again."
      return false
    else 
      return true
    end
  end

  def checkBal(amount)
    puts @balance
    if amount >= @balance
      puts "Insufficient balance."
      return false
    end
  end
end

checking_account = Account.new("Navin", 10000)
puts "Checking account created"
checking_account.withdraw(10)