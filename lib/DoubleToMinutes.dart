extension DoubleToMinutes on double {
  String toMinutes() {
    return (this * 60).round().toString();
  }
}
