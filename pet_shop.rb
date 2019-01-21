def pet_shop_name(name)
  return @pet_shop[:name]
end

def total_cash(cash)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(cash, total_cash)
  @pet_shop[:admin][:total_cash] += total_cash
end

def pets_sold(number)
  return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold (number, pets_sold)
  @pet_shop[:admin][:pets_sold] += pets_sold
end

def stock_count(number)
  number = @pet_shop[:pets].count()
  return number
end

def find_pet_by_name(pet_shop, name)
  pet_name = @pet_shop[:pets]
  for pet in pet_name
    if name == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet, name)
  pet_name = @pet_shop[:pets]
  for pet in pet_name
    if name == pet[:name]
      pet_name.delete(pet)
    end
  end
  return nil
end

def add_pet_to_stock(new_pet, number)
  @pet_shop[:pets].push(@new_pet)
  number = @pet_shop[:pets].count()
  p number
end

def customer_cash(cash)
  money = @customers
  for cash in money
    customer_cash = cash[:cash]
    return customer_cash
  end
end

def remove_customer_cash(customer, cash)
  @customers[0][:cash] -= cash
end

def customer_pet_count(count)
  customer_pet_count = @customers[0][:pets].length
  return customer_pet_count
end

def add_pet_to_customer(new_pet, number)
  customer_pet = @customers[0][:pets] << @new_pet
  customer_pet_count = customer_pet.length
  p customer_pet_count
end

def customer_can_afford_pet(cash, price)
  for cost in @pet_shop[:pets]
    price = cost[:price]
     if price > @customers[1][:cash]
       return false
     end
  end
  return true
end

def pets_by_breed(pet_shop, breed)
  pets_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
    pets_breed << pet
    end
  end
  return pets_breed
end


#
#
#
# def pets_by_breed(pet_shop, name)
#   pets = @pet_shop[:pets].map {|x| x}
#   array_of_pets = pets.collect{|h| h.to_a}.flatten
#   # array_of_pets.each { |name| counts[name] += 1 }
#   # get_pet = @pet_shop[:pets].map {|x| x}
#   #   pet_array = get_pet.collect{|h| h.to_a}.flatten
#   #   breed_name_frequency_hash = {}
#   #   breed_names.each do |breed_name|
#   #   count = breed_names.count(breed_name)
#   #   breed_name_frequency_hash[breed_name] = count
# end
