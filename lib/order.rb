require_relative 'pastry'

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



