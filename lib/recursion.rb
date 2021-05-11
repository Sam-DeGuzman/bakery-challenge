$by_3 = 0

def getQty(quantity)
    return "packs by 3: #{$by_3}, packs by 5: #{quantity / 5}" if quantity % 5 == 0
    $by_3 += 1
    getQty(quantity -= 3)
end

puts getQty(19)