module TV
  attr_accessor :channel

  def on
    "Turning on..."
  end

  def off
    "Turning off..."
  end

  def select_channel(channel)
    self.channel = channel
  end

  def up
    channel += 1
  end

  def down
    channel -= 1
  end

  def record
    "Recording..."
  end

  def play
    "Playing the recorded show..."
  end
end

class HDTV
  include TV

  def initialize
    @definition = :hd
  end
end

class NormalTV
  include TV

  def initialize
    @definition = :standard
  end

  def record
    "Recording disabled..."
  end

  def play
    "Playback disabled..."
  end
end

hdtv = HDTV.new
puts hdtv.record
puts hdtv.play

base_tv = NormalTV.new
puts base_tv.record
puts base_tv.play
