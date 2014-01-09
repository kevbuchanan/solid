class ShapeCalculator
  def calculate_area(*shapes)
    shapes.reduce(0) do |area, shape|
      case shape
      when Circle
        puts "I'm a Circle"
        area += circle_area(shape)
      when Rectangle
        puts "I'm a Rectangle"
        area += rectangle_area(shape)
      when Triangle
        puts "I'm a Triangle"
        area += triangle_area(shape)
      end
    end
  end

  def circle_area(circle)
    circle.radius * circle.radius * Math::PI
  end

  def rectangle_area(rectangle)
    rectangle.height * rectangle.width
  end

  def triangle_area(triangle)
    triangle.base * triangle.height / 2.0
  end
end

class Circle
  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end
end

class Triangle
  attr_reader :base, :height

  def initialize(base, height)
    @base = base
    @height = height
  end
end

class Rectangle
  attr_reader :height, :width

  def initialize(height, width)
    @height = height
    @width = width
  end
end

calculator = ShapeCalculator.new
circle = Circle.new(5)
triangle = Triangle.new(3, 6)
rectangle = Rectangle.new(5, 7)

area = calculator.calculate_area(circle, triangle, rectangle)
puts area
