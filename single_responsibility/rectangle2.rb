class Rectangle
  attr_reader :height, :width

  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    height * width
  end
end

class RectangleDisplay
  attr_reader :rectangle

  def initialize(rectangle)
    @rectangle = rectangle
  end

  def display
    puts "-" * rectangle.width
    rectangle.height.times { puts "|" + " " * (rectangle.width - 2) + "|" }
    puts "_" * rectangle.width
  end
end


rectangle = Rectangle.new(20, 70)
display = RectangleDisplay.new(rectangle)
puts rectangle.area
display.display
