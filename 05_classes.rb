# Ejemplo de una jerarquia polimorfica.
# Las clases pueden contestar mensajes tambien (ver :percentage y :fixed):

class Discount

  def self.percentage a_percentage
    DiscountByPercentage.new a_percentage
  end

  def self.fixed an_amount
    DiscountByFixedAmount.new an_amount
  end

  def apply_to an_amount
    an_amount - self.calculate_discount_on(an_amount)
  end

  def calculate_discount_on an_amount
    fail 'Implement me!'
  end

end

class DiscountByPercentage < Discount

  def initialize a_percentage
    @percentage = a_percentage
  end

  def calculate_discount_on an_amount
    an_amount * @percentage / 100
  end

end

class DiscountByFixedAmount < Discount

  def initialize amount_to_discount
    @amount_to_discount = amount_to_discount
  end

  def calculate_discount_on an_amount
    @amount_to_discount
  end

end

puts Discount.percentage(10).apply_to 100
puts Discount.fixed(5).apply_to 100