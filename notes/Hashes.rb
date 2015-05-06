## Print a Table for a Hash

## toy: print_hash {brit: :dogs, tim: :whiskey, jp: :ping pong}
## example: print_hash(toy)
## prints the following

+__________________+
|
|
|
|
|
|
|__________________|+

def print_hash(hash)

end

## scratchpad:
## toy = {brit: :dogs, tim: :whiskey, jp: :ping pong}
## example: print_hash(toy)
## prints the following


##The max method only works on arrays like: [3, 4, 5, 2, 2]


## Take an array of strings or symbols, find the longest one.

def max_length(names)
	names.map { |name| name.length }.max
end

def print_line(key, value, max_k, max_v)
	puts "| #{key} | #{value} |"

def print_hash(hash)
	longest_key = max_length(hash.keys)
	longest_val = max_length(hash.values)
end	

## ruby can do math on strings. this is useful to visully create tables.
hello.center(20)