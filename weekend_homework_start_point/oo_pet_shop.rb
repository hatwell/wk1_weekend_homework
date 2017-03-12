class PetShop
  def initialize(name, admin)
    @name = name
    @admin = admin
  end

  def pet_shop_name
    return @name
  end

  def who_owns_the_place
    puts "The owner of the shop is #{@admin}"
  end

  def total_cash
    return @admin[:total_cash]
  end
end

cam_admin = {
  total_cash: 1000,
  pets_sold: 0,
}

camelot = PetShop.new("Camelot of Pets", cam_admin)

puts camelot.total_cash
