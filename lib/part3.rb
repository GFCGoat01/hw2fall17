class Dessert

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name, :calories
  
  def healthy?
    return true if @calories < 200
    return false
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  attr_accessor :flavor
  
  def delicious?
    return false if @flavor == "black licorice"
    return true
  end
end

