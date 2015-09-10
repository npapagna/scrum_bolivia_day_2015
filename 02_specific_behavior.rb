
roman_one = 'I'
roman_two = 'II'

def roman_one.to_arabic
  1
end

def roman_two.to_arabic
  2
end

puts roman_one.to_arabic
puts roman_two.to_arabic

# No todos las instancias de String responden el mensaje :to_arabic.
# 'hola'.to_arabic falla