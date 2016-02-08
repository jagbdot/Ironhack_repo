require "date"

class Product
  attr_accessor :name
  attr_accessor :price

  def initialize name
    @name = name
    evaluate_price name
  end

  def evaluate_price name
    case name
      when "rice"
        @price = 1
      when "anchovies"
        @price = 2
    end
  end

  def getProduct
    return @price, @name
  end

  def season
      year_day = Date.today.yday().to_i
      year = Date.today.year.to_i
      is_leap_year = year % 4 == 0 && year % 100 != 0 || year % 400 == 0
      if is_leap_year && year_day > 60
        # if is leap year and date > 28 february 
        year_day = year_day - 1
      end

      if year_day >= 355 || year_day < 81
        result = :winter
      elsif year_day >= 81 && year_day < 173
        result = :spring
      elsif year_day >= 173 && year_day < 266
        result = :summer
      elsif year_day >= 266 && year_day < 355
       result = :autumn
      end

      return result
  end
end

class Fruit < Product
  @@prices_by_season = {
    "autumn"=>
      {
        "banana"=> 20, 
        "grapes"=> 15, 
        "orange"=> 5
      }, 
    "winter"=>
      {
        "banana"=> 21,
        "grapes"=> 15, 
        "orange"=> 5
      }, 
    "spring"=>
      {
        "banana"=> 20, 
        "grapes"=> 15, 
        "orange"=> 5
      }, 
    "summer"=>
      {
        "banana"=> 20, 
        "grapes"=> 15, 
        "orange"=> 2
      }
  }

  def evaluate_price name
      @price = @@prices_by_season[season.to_s][name]
  end

end

class Hous2are < Product
  def evaluate_price
    @price = 15
  end

  def discount()
    if(@price>100)
      @price-= (@price*5/100)
      puts "¡Descuento del 5%!"
    end
  end
end