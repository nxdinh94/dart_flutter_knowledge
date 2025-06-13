// Client shouldn't implement method that they don't use


interface class Animal{
  void eat(){}
}

interface class AnimalSwim{
  void swim(){}
}
interface class AnimalFly{
  void fly(){}
}

class Bird implements Animal, AnimalFly{
  @override
  void eat() {

  }

  @override
  void fly() {

  }

}
class Fish implements Animal, AnimalSwim{
  @override
  void eat() {

  }

  @override
  void swim() {

  }

}
void main(){

}