#math for purchases and returns
module Transaction
    def purchase(wallet, register, product)
        wallet - product = register
    end

    def return(wallet, register, product)
        product - register = wallet
    end
end


#items and prices
    #still need to figure out how to make ask the user for wallet amount instead of hardcoding.
class Purchase
    include Transaction
    
    def cheese
        purchase(10.00, 2.00, 100.00)
    end

    def bread
        purchase(10.00, 4.00, 100.00)
    end

    def beer
        purchase(10.00, 6.00, 100.00)
    end

end

#makes a new object
thing = Purchase.new
thing2 = Purchase.new
thing3 = Purchase.new
#takes the new object and ties the numbers and formula to it. 
@first_item = thing.cheese
@second_item = thing.bread
@third_item = thing.beer
#prints out the end result of the math formula
         




array_wallet = [

]


def menu
    puts "---What would you like to do?---"
    puts "1) Buy Something"
    puts "2) View Cart"
    puts "3) Return Something"
    puts "4) Exit"
        response = gets.strip.to_i
        case response
        when 1
            option_1 #buy something 
        when 2 #view the cart goes here
            #need to set up method for adding to the array above. 
        when 3
            option_3
             #this isn't set up yet
        when 3
            exit
        else
            puts "***Invalid Choice***"
        end
end




def option_1 #buy something
    
    puts "---What do you want to buy?---"
    puts "1) Cheese"
    puts "2) Bread"
    puts "3) Beer"
        response = gets.to_i
        case response
        when 1
            puts "Your remaining balance is: " + "$" + @first_item.to_s
            last_step
        when 2
            puts "Your remaining balance is: " + "$" + @second_item.to_s
            last_step
        when 3
            puts "Your remaining balance is: " + "$" + @third_item.to_s
            last_step
            else
                #need to list other items
                puts "---invalid choice---"
                menu
            end
end


def option_3  #this will be used for the return process
    response = gets.to_i
    
end


def last_step #return to the main menu 
puts "---Would you like to return to the main menu?---"
    puts "1) Yes"
     puts "2) No"
    response = gets.strip.to_i
    case response
    when 1
        menu
    when 2
        exit
    end
end 

menu

