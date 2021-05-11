require 'pry'
require_relative 'pastry'

#VEGEMITE 
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

#BM prices
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

# binding.pry

vegemite1 = Pastry.new
vegemite2 = Pastry.new
vegemite3 = Pastry.new
#invalid
puts vegemite1.order(0, "VS5")
puts vegemite1.order(7, "VS5")

#valid
puts vegemite1.order(10, "VS5")
puts vegemite2.order(19, "VS5")
puts vegemite3.order(12, "VS5")



