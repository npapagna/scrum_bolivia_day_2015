class BillingDepartment

  def calculate_total subtotal_amount, a_discount
    subtotal_after_discount = a_discount.apply_to subtotal_amount

    self.apply_taxes_to subtotal_after_discount
  end

  def apply_taxes_to an_amount
    an_amount + 1
  end

end

class DiscountByPercentage

  def apply_to an_amount
    an_amount - an_amount * 10/100
  end

end

class DiscountByFixedAmount

  def apply_to an_amount
    an_amount - 50
  end

end

billing_department = BillingDepartment.new

# No hace falta que los objetos pertenezcan a la misma jerarquia de clases para que sean polimorficos:
puts billing_department.calculate_total 100, DiscountByPercentage.new
puts billing_department.calculate_total 100, DiscountByFixedAmount.new