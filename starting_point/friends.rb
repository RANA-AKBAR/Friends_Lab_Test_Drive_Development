def get_name(person)
  return person[:name]
end

def favourite_show(person)
  return person[:favourites][:tv_show]
end

def liked_food(person, food)
  return person[:favourites][:snacks].include?(food)
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def lose_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(folk)
  counter = 0
  for person in folk
    counter += person[:monies]
  end
  return counter
 end

def lend_money(person_1, person_2, money)
  person_1[:monies] -= money
  person_2[:monies] += money
end

def favourite_foods(people)
  foodstuff = []
  for person in people
    foodstuffs.concat(person[:favourites][:snacks])
  end
  return foodstuff
end

def nae_pals(people)
  friendless = []
  for person in people
    if person[:friends].length == 0
      friendless.push(person[:name])
    end
  end
  return friendless
end
