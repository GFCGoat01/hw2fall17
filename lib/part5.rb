class CartesianProduct
  include Enumerable

  def initialize(a,b)
    @firstArray = a
    @secondArray = b
    @cartesianArray = a.product(b)
  end

  def each
    return @cartesianArray.each { |x| print x }
  end

end


c = CartesianProduct.new([1..2], [3..4])
c.each { |elt| puts elt.inspect }
