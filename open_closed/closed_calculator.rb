class ShapeCalculator
  def calculate_area(*shapes)
    shapes.reduce(0) do |area, shape|
      shape.say_name
      area += shape.area
    end
  end
end

class Shape
  attr_reader :name
  def say_name
    puts "I'm a #{name}"
  end
end

class Circle < Shape
  attr_reader :radius

  def initialize(radius)
    @radius = radius
    @name = "Circle"
  end

  def area
    radius * radius * Math::PI
  end
end

class Triangle < Shape
  attr_reader :base, :height

  def initialize(base, height)
    @base = base
    @height = height
    @name = "Triangle"
  end

  def area
    base * height / 2.0
  end
end

class MyShape < Shape
  attr_reader :side

  def initialize(side)
    @side = side
    @name = "Shapey"
  end

  def area
    23
  end
end

class Rectangle < Shape
  attr_reader :height, :width

  def initialize(height, width)
    @height = height
    @width = width
    @name = "Rectangle"
  end

  def area
    height * width
  end
end

calculator = ShapeCalculator.new
circle = Circle.new(5)
triangle = Triangle.new(3, 6)
rectangle = Rectangle.new(5, 7)

area = calculator.calculate_area(MyShape.new(2), circle, triangle, rectangle)
puts area
