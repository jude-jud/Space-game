class Background extends gameObject {

  public Background(float x, float y) {

    super(imagemap.get("spacebackground"), x, y, 800, 1400);
  }
  public void move() {
    y = y + 4;
    if (y >= 1500) {
      y = -1300;
    }
  }
  public void update() {
    this.show();
    this.move();
  }
}
