
class Car {
  final String brand;
  final int year;
  const Car({required this.brand, required this.year});

  Car.unknown() : brand = 'unknown', year = 0;

  String displayInfo(){
    return "Brand: ${this.brand}, Year: ${this.year}";
  }
}

void main(){
  final car = Car(brand: 'Toyota', year: 2022);
  final unknownCar = Car.unknown();
  print(car.displayInfo());
  print(unknownCar.displayInfo());
}