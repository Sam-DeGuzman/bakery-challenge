require 'pastry'

describe Pastry do
    before(:each) do
        @vegemite = Pastry.new
      end
     describe ".order" do 
        
        context "given a invalid quantity integer" do

            it "returns error message" do
            expect(@vegemite.order(0, "VS5")).to eq("Invalid quantity input!")
            end
            it "returns error message" do
            expect(@vegemite.order(7, "VS5")).to eq("Invalid quantity input!")
            end

        end
        
        context "given a valid quantity integer" do

            it "return optimal packs for 10" do 
            expect(@vegemite.order(10, "VS5")).to eq("Pack/s of 5: 2, Cost: $17.98")          
            end

        end
end 

end