class PetShop
  def initialize(pet_shop, customers)
    @pet_shop = pet_shop
    @customers = customers
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

  def find_pet_by_name(name)
    for pet in @pet_shop[:pets]
      if pet[:name] == name
        return pet
      end
    end
    return nil
  end

  def remove_pet_by_name(name)
    for pet in @pet_shop[:pets]
      if pet[:name] == name
        @pet_shop[:pets].delete(pet)
      end
    end
  end

  def add_pet_to_stock(new_pet)
    @pet_shop[:pets].push(new_pet)
  end

  def customer_pet_count(customer)
    for person in @customers
      if person[:name] == customer
        return person[:pets].size
      end
    end
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

camelot_customers = [
      {
        name: "Craig",
        pets: [],
        cash: 1000
      },
      {
        name: "Zsolt",
        pets: [],
        cash: 50
      }
    ]

camelot = PetShop.new(camelot_pet_shop, camelot_customers)
