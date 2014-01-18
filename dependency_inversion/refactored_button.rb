class AbstractButton
  attr_reader :client, :state

  def initialize(client)
    @client = client
    @state = :off
  end

  def turn_off
    @state = :off
    client.off
  end

  def turn_on
    @state = :on
    client.on
  end

  def detect
    if state == :on
      turn_off
    else
      turn_on
    end
  end
end

class ButtonClient
  def on
    "Turning on"
  end

  def off
    "Turning off"
  end
end

class MyButton < AbstractButton
  def listen_for_press
    "Listening..."
    detect
  end
end

class Lamp < ButtonClient
  def on
    light
  end

  def light
    "Very bright..."
  end

  def off
    dark
  end

  def dark
    "Dark..."
  end
end

button = MyButton.new(Lamp.new)
puts button.listen_for_press
puts button.listen_for_press
