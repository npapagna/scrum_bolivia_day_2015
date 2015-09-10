# ejemplos de mensajes de colecciones en Ruby:

number = [1, 2, 3, 4]

puts number.select{ |number| number.even? }
puts number.reject{ |number| number.even? }
puts number.detect{ |number| number.even? }
puts number.map{ |number| number + 10 }

# estas dos colaboraciones son equivalentes:
puts number.select &:even?
puts number.select{ |number| number.even? }