require 'pry'

#VEGEMITE 
# packs and prices
# 3 @ $6.99
# 5 @ $8.99

# 1 and 2 = invalid
# 3 = 6.99 pack
# 4 = invalid
# 5 = 8.99 pack
# 6 = 2, 6.99 packs
# 7 = invalid
# 8 = 6.99 and 8.99 pack
# 9 = 3, 6.99 packs
# 10 = 2, 8.99 packs
# 11 = 2, 6.99, 
     # 1, 8.99 packs
# 12 = 4, 6.99
# 13 = 1, 6.99
     # 2, 8.99
# 14 = 3, 6.99 
     # 1, 8.99
# 15 = 3, 8.99
# 16 = 2, 6.99 
     # 2, 8.99
# 17 = 4, 6.99
     # 1, 8.99
# 18 = 1, 6.99
     # 3, 8.99



#BM prices
# packs and prices
# 2 @ $9.95
# 5 @ $16.95
# 8 @ $24.95

# 1 invalid
# 2 9.95
# 3 invalid
# 4 2, 9.95
# 5 1, 16.95
# 6 3, 9.95
# 7 1, 9.95 
   # 1, 16.95
# 8 1, 24.95
# 9 1, 16.95
   # 2, 9.95
# 10 2, 16.95
# 11 1, 16.95
   # 3, 9.95
# 12 1, 24.95, 2 9.95 
# 13 1, 24.95, 1 16.95




#VEGEMITE
def divideByRatio(num)
    pack1 = {:qty => 3, :price => 6.99}
    pack2 = {:qty => 5, :price => 8.99}


    # binding.pry
    
    # needs to check if the remainder of the num / 5 is greater than divisible by 3

    # check if num is divisible by 5 if not subtract 3 till num is divisible by 5   

    # solve_mb11 will check first if @mb11 is divisible by 2
    # IF yes, that means (@mb11 / 8) + (@mb11 % 8) / 2  is the most optimal number of packaging


    if num % 5 == 0
        puts pack2[:price] * computeQty(num,pack2[:qty])
        
    elsif (num % 5) % 3 = 0 
        by5 = num % 5
        by3 = num % 3
        
    else
        puts "Invalid quantity"
    end

end


def computeQty(num,divisor)
    num / divisor
end


divideByRatio(11)