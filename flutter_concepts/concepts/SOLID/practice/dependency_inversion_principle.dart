

class Animal{
  Animal({required this.name});
  final String name;
  void makeSound(){
    print('$name make sound');
  }
  String get getName => this.name;
}

class Dog extends Animal{
  Dog({required this.name}):super(name : name);
  final String name;
  void makeSound(){
    print('$name make sound like Gau Gau');
  }
}

class Cat extends Animal{
  Cat({required this.name}):super(name : name);
  final String name;
  void makeSound(){
    print('$name make sound like Gau Gau');
  }
}

class Bird extends Animal{
  Bird({required this.name}):super(name : name);
  final String name;
  void fly(){
    print('$name is flying');
  }
  void makeSound(){
    print('$name is hot');
  }
}

void printAnimalsName(List<Animal> animals){
  for(final i in animals){
    print(i.getName);
  }
}

void main(){
  final cat = Cat(name: 'Cat 1');
  final dog = Dog(name: 'Dog 1');
  final bird = Bird(name: 'Bird 1');
  List<Animal> list = [cat, dog, bird];
  printAnimalsName(list);
}