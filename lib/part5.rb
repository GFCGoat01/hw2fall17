class CartesianProduct
  include Enumerable

  def initialize(a,b)
    @firstArray = a
    @secondArray = b
    @cartesianArray = a.product(b)
  end

  def each
    return @cartesianArray .each { |x| print x }
  end

end