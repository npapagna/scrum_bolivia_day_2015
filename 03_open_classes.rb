string = 'scrum Bolivia Day 2015'

# Todas las clases, incluso las pertenecientes al core de Ruby, se pueden abrir y modificar:
class String

  def as_sentence
    first_letter = self[0]
    rest_of_the_sentence = self[1..self.size-1]

    first_letter.upcase + rest_of_the_sentence + '.'
  end

end

puts string
puts string.as_sentence