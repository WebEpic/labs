class Human

  def initialize(name)
     @name = name
     @alertness = 0.0
  end

  def alertness
    @alertness
  end

  def has_coffee?
    false
  end

  def needs_coffee?
    true
  end

  def buy(name_of_drink)
  @drink = name_of_drink
  end

  def drink!
    @alertness += 0.34
    #change fullness of her drink
    @drink.change_drink_val

  end

end

