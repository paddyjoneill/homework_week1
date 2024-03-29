def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,amount)
  pet_shop[:admin][:pets_sold] += amount
end

def stock_count(pet_shop)
  pet_shop[:pets].count
end

def pets_by_breed(pet_shop, pet_breed)
  breed_array = []
  pets_array = pet_shop[:pets]
  for pet in pets_array
    if pet[:breed] == pet_breed
      breed_array << pet[:breed]
    end
  end
  return breed_array
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  end
  return false
end

def sell_pet_to_customer(pet_shop, pet_name, customer)

  if pet_name != nil

    for pet in pet_shop[:pets]

      pet1 = pet[:name]
      pet2 = pet_name[:name]

      if pet1 == pet2

        if customer[:cash] >= pet_name[:price]

          customer[:pets] << pet_name
          pet_shop[:admin][:pets_sold] +=1

          customer[:cash] -= pet_name[:price]

          pet_shop[:admin][:total_cash] += pet_name[:price]

          pet_shop[:pets].delete(pet)

        end
      end
    end
  end
end
