public class Button {
  public Lamp lamp;
  public boolean on;

  public Button(Lamp lamp) {
    this.lamp = lamp;
    this.on = false;
  }

  public boolean buttonOn() {
    return this.on;
  }

  public void press() {
    if (buttonOn()) {
      this.on = false;
      lamp.off();
    } else {
      this.on = true;
      lamp.on();
    }
  }
}
