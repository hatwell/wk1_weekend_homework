class PetShop
  def initialize(pet_shop)
    @pet_shop = pet_shop
  end

  def pet_shop_name
    return @pet_shop[:name]
  end

  def total_cash
    return @pet_shop[:admin][:total_cash]
  end

  def add_or_remove_cash(amount)
    return @pet_shop[:admin][:total_cash] += amount
  end

  def pets_sold
    return @pet_shop[:admin][:pets_sold]
  end

  def increase_pets_sold(amount)
    @pet_shop[:admin][:pets_sold] += amount
  end

  def stock_count
    return @pet_shop[:pets].size
  end

  def pets_by_breed(breed)
    pets_of_breed = Array.new
    for animal in @pet_shop[:pets]
      if animal[:breed] == breed
        pets_of_breed.push(animal)
      end
    end
    return pets_of_breed
  end

end

camelot_pet_shop = {
    pets: [
      {
        name: "Sir Percy",
        pet_type: :cat,
        breed: "British Shorthair",
        price: 500
      },
      {
        name: "King Bagdemagus",
        pet_type: :cat,
        breed: "British Shorthair",
        price: 500
      },
      {
        name: "Sir Lancelot",
        pet_type: :dog,
        breed: "Pomsky",
        price: 1000,
      },
      {
        name: "Arthur",
        pet_type: :dog,
        breed: "Husky",
        price: 900,
      },
      {
        name: "Tristan",
        pet_type: :dog,
        breed: "Basset Hound",
        price: 800,
      },
      {
        name: "Merlin",
        pet_type: :cat,
        breed: "Egyptian Mau",
        price: 1500,
      }
    ],
    admin: {
      total_cash: 1000,
      pets_sold: 0,
    },
    name: "Camelot of Pets"
  }

camelot = PetShop.new(camelot_pet_shop)

puts camelot.pets_by_breed("Husky")
