class Pastry
    
def order(qty,code)
    codes = ["VS5","MB11","CF"].freeze

    puts "Invalid pastry code!" unless codes.include?(code)

    if code == 'VS5'
        @pack1 = {:qty => 3, :price => 6.99}
        @pack2 = {:qty => 5, :price => 8.99}

        puts qty
        puts "Pack 1 quantity: #{@pack1[:qty]} with price of $#{@pack1[:price]}"
        puts "Pack 2 quantity: #{@pack2[:qty]} with price of $#{@pack2[:price]}"
    
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

end





