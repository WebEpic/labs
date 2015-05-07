def destutter
  array = [1, 2, 3, 3, 4, 4, 3, 2, 1, 1]
  array.uniq.each {|x| puts x }
  end
destutter