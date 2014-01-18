public class Button implements AbstractButton {
  public ButtonClient client;
  public boolean on;

  public Button(ButtonClient client) {
    this.client = client;
    this.on = false;
  }

  public boolean getState() {
    return this.on;
  }

  public void detect() {
    boolean buttonOn = getState();
    if (buttonOn) {
      this.on = false;
      client.off();
    } else {
      this.on = true;
      client.on();
    }
  }

  public void press() {
    this.detect();
  }
}
