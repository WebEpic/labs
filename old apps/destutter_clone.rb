def remove_consecutive_duplicates(xs)
  [xs.first] + xs.each_cons(2).select do |x,y|
    x != y
  end.map(&:last)
end
print remove_consecutive_duplicates ([1, 2, 3, 3, 4, 4, 3, 2, 1, 1])
#=> [1,2,3,1]