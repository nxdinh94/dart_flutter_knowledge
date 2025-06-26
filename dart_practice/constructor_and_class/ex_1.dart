
class Car {
  final String brand;
  final int year;
  const Car({required this.brand, required this.year});

  String displayInfo(){
    return "Brand: ${this.brand}, Year: ${this.year}";
  }
}

void main(){
  final car = Car(brand: 'Toyota', year: 2022);
  print(car.displayInfo());
}