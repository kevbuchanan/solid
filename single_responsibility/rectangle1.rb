class Rectangle
  attr_reader :height, :width

  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    height * width
  end

  def display
    puts "-" * width
    height.times { puts "|" + " " * (width - 2) + "|" }
    puts "_" * width
  end
end

rectangle = Rectangle.new(20, 70)
puts rectangle.area
rectangle.display
