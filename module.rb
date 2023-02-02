module Methods

    def multiply(num1,num2)
        count = 0
        multiplication = 0
        
        while(count<num2)
            multiplication += num1;
            count = count+1;
        end
        puts "Multiplication is: #{multiplication}"
    end

    def is_palindrome(string)
        # If case insensitive palindrome checking uncomment below line
        # string.downcase! 
        reversed = ""
        count = string.length

        while count > 0
            count -= 1
            reversed += string[count]
        end

        if string == reversed
            puts "#{string} is a palindrom."
        else
            puts "#{string} is not a palindrom."
        end
    end
end  