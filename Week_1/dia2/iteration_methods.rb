cities = ["paris", "barcelona", "berlin", "new York", "santiago"]

#each

  longest = ""
  cities.each do  |city|
    if longest.length < city.length
      longest = city
    end
  end
  longest

#reduce

cities.reduce do |longest, city|
    if longest.length < city.length
      city
    else
      longest
    end

#forma legante

cities.reduce { |longest, city| longest.length < city.length ? city : longest}