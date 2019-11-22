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
