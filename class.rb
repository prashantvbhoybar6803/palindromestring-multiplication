require_relative 'module'

class CallMethods
    # When use extend we can access methods from moduledirectly without instantiating a class.
    extend Methods 

    #  When use include we need to create a new object for a class and then we can access methods from module.
    include Methods
end


print "Enter number1 = ";
num1 = gets.chomp; #gets input from user

print "Enter number2 = ";
num2 = gets.chomp; 

#checks input from user is valid/invalid

if num1 == '' || num2 == ''
    puts "Invalid input"
else
    if num1.scan(/\D/).empty? && num2.scan(/\D/).empty? 
        CallMethods.multiply(num1.to_i,num2.to_i)
    else
        puts "Invalid number input"
    end
end


print "\n\n"

print "Enter a string to check it is palindrom or not: ";

string = gets.chomp; 
if string.empty?
    puts "Invalid string"
else
    CallMethods.is_palindrome(string)
end


