
cipher = {
  a: 'Amsterdam', 
  b: 'Baltimore', 
  c: 'Canada', 
  d: 'Denmark', 
  e: 'Eddystone', 
  f: 'Francisco', 
  g: 'Gibraltar', 
  h: 'Hanover', 
  i: 'Italy', 
  j: 'Jerusalem',
  k: 'Kimberley',
  l: 'Liverpool',
  m: 'Madagascar',
  n: 'Neufchatel',
  o: 'Ontario',
  p: 'Portugal',
  q: 'Quebec',
  r: 'Rivoli',
  s: 'Santiago',
  t: 'Tokio',
  u: 'Uruguay',
  v: 'Victoria',
  w: 'Washington',
  x: 'Xantippe',
  y: 'Yokohama',
  z: 'Zululand'
}

def encode(alphabet, message)
  result = ""
  message.each_char do |letter|
    result << alphabet[letter.to_sym] + ' '
  end
  puts "The encoded version of #{message} is: #{result}"
end

def decode(alphabet, message)
  result = ""
  alphabet.invert do |string|
    result << message[string.to_sym]
    end
  puts "The decoded version of #{alphabet} is: #{result}"
  # decipher = alphabet.invert
end

encode(cipher, "dog") # => "Denmark Ontario Gibraltar"
# puts "Dog is: #{cipher}"
encode(cipher, "some brand new message")
decode(cipher, "") # => "dog"
decode(cipher, "some brand new message")
