require 'pry'
class Pastry
    
def initialize(vs_by_3 = 0, vs_by_5 = 0)
    @vs_by_3 = vs_by_3.to_i
    @vs_by_5 = vs_by_5.to_i
end

def order(qty,code)
    codes = ["VS5","MB11","CF"].freeze

    puts "Invalid pastry code!" unless codes.include?(code)

    if code == 'VS5'
        @pack1 = {:qty => 3, :price => 6.99}
        @pack2 = {:qty => 5, :price => 8.99}    

        quantity = qty

        if qty == 7 || qty == 0
            return "Invalid quantity input!"    
        elsif qty % 5 == 0 
            by_5 = qty / 5
            return "Pack/s of 5: #{by_5}, Cost: $#{@pack2[:price] * computeQty(qty, @pack2[:qty])}"
        else
            # until quantity % 5 == 0 do
            #     quantity -= 3
            #     by_3 += 1
            #     by_5 = quantity / 5
            # end
            # return "Pack/s of 3: #{by_3}, Pack/s of 5: #{by_5}, Cost: $#{computePrice(@pack1[:price] * by_3, @pack2[:price] * by_5)}"
            # binding.pry
            getQtyVeg(quantity)
        end

    elsif code == 'MB11'
        @pack1 = {:qty => 2, :price => 9.95} 
        @pack2 = {:qty => 5, :price => 16.95} 
        @pack3 = {:qty => 8, :price => 24.95} 

        puts qty
        puts "Pack 1 quantity: #{@pack1[:qty]} with price of $#{@pack1[:price]}"
        puts "Pack 2 quantity: #{@pack2[:qty]} with price of $#{@pack2[:price]}"
        puts "Pack 3 quantity: #{@pack3[:qty]} with price of $#{@pack3[:price]}"
  
    elsif code == 'CF'
        @pack1 = {:qty => 3, :price => 5.95} 
        @pack2 = {:qty => 5, :price => 9.95} 
        @pack3 = {:qty => 9, :price => 16.99} 

        puts qty
        puts "Pack 1 quantity: #{@pack1[:qty]} with price of $#{@pack1[:price]}"
        puts "Pack 2 quantity: #{@pack2[:qty]} with price of $#{@pack2[:price]}"
        puts "Pack 3 quantity: #{@pack3[:qty]} with price of $#{@pack3[:price]}"
        
    end

end
    private
    def computeQty(num, divisor)
        num / divisor
    end

    def computePrice(price1, price2)
        price1 + price2
    end
    
    def getQtyVeg(quantity)
        return "Pack/s of 3: #{@vs_by_3}, Pack/s of 5: #{@vs_by_5}, Cost: $#{computePrice(@pack1[:price] * @vs_by_3, @pack2[:price] * @vs_by_5)}" if quantity % 5 == 0
        @vs_by_3 += 1
        @vs_by_5 = quantity / 5
        getQtyVeg(quantity -= 3)
    end

end






