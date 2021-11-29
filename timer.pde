class Timer {
  int timeStamp = 0;
  int currentTime = 0;
  int timeInterval;
  public Timer(int ti) {
    timeInterval = ti;
  }
  public boolean checkTime() {
    currentTime = millis();
    if (timeStamp+timeInterval < currentTime) {
      timeStamp= currentTime;
      return(true);
    } else {
      return(false);
    }
  }
  public void setInterval(int i) {
    timeInterval = i;
  }
}
