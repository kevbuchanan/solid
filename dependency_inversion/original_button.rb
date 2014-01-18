class Button
  attr_reader :lamp, :state

  def initialize(lamp)
    @lamp = lamp
    @state = :off
  end

  def turn_off
    @state = :off
    lamp.turn_off
  end

  def turn_on
    @state = :on
    lamp.turn_on
  end

  def listen_for_press
    "Listening"
    if state == :on
      turn_off
    else
      turn_on
    end
  end
end

class Lamp
  def turn_on
    "Very bright..."
  end

  def turn_off
    "Dark..."
  end
end

button = Button.new(Lamp.new)
puts button.listen_for_press
puts button.listen_for_press

