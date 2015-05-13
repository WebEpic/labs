class Coffee
  
  def initialize(name)
    @name = name
    @full = 3

  end

  def full?
    @full == 3
  end 

  def empty?
    @full == 0
  end

  def change_drink_val
    @full -= 1
  end

end
