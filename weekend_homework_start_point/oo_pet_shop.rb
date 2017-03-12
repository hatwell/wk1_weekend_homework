class PetShop
  def initialize(name, admin)
    @name = name
    @admin = admin
  end

  def display
    puts "This pet shop is called #{@name}."
  end

  def who_owns_the_place
    puts "The owner of the shop is #{@admin}"
  end
end

cam_admin = {
  total_cash: 1000,
  pets_sold: 0,
}

camelot = PetShop.new("Camelot of Pets", cam_admin)

puts camelot.who_owns_the_place
