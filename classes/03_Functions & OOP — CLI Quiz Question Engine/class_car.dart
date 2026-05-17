class Car {
  String band;
  int year;

  Car({required this.band, required this.year});
}

void main() {
  var c = Car(band: 'Toyota', year: 30);
  print(c.band);
}
