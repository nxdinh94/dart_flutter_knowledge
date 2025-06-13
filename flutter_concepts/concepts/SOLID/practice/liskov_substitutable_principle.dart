

class Animal{
  Animal({required this.name});
  final String name;
  void makeSound(){
    print('$name make sound');
  }
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

void makeAnimalSound(Animal animal){
  animal.makeSound();
}


void main(){
  final animal = Animal(name: 'ABC');
  final cat = Cat(name: 'Cat1');
  final dog = Dog(name: 'Dog1');
  final bird = Bird(name: 'Bird 1');
  makeAnimalSound(animal);
  makeAnimalSound(cat);
  makeAnimalSound(dog);
  makeAnimalSound(bird);
}