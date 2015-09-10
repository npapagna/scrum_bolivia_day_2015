class PriceCalculator

  def initialize
    @price_list = { :apple => 10, :orange => 15}
  end

  def calculate_price_for a_product
    sleep 2

    @price_list[a_product]
  end

end

price_calculator = PriceCalculator.new

puts price_calculator.calculate_price_for :apple

# Podemos incerceptar los mensajes que reciben los objetos aunque no estén implementados y proveer comportamiento
# en forma dinámica:

class MethodCache

  def initialize delegatee
    @delegatee = delegatee
    @cached_results = {}
  end

  def method_missing selector, arguments
    @cached_results.fetch(arguments) { self.cache_result_of_performing selector, arguments }
  end

  def cache_result_of_performing a_selector, arguments
    @cached_results[arguments] = self.perform a_selector, arguments
  end

  def perform a_selector, arguments
    @delegatee.send a_selector, arguments
  end

end

cached_price_calculator = MethodCache.new price_calculator
puts cached_price_calculator.calculate_price_for :apple
puts cached_price_calculator.calculate_price_for :apple

