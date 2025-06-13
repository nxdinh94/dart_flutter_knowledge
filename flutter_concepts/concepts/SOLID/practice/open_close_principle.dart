
import 'dart:math';

interface class Shape{
  void calculator(){}
}

class Square implements Shape{
  Square({required this.edge});
  final int edge;

  @override
  void calculator() {
    final area = pow(edge, 2);
    print('Area of this Square is $area');
  }

}

class Circle implements Shape{
  Circle ({required this.radius});
  final int radius;

  @override
  void calculator() {
    final area = pow(radius, 2) * pi;
    print('Area of this Circle is $area');
  }
}

class Triangle implements Shape{
  Triangle({required this.height, required this.base});
  final int height;
  final int base;

  @override
  void calculator() {
    final double area = (height * base)/2;
    print('Area of this triangle is $area');
  }
}

class AreaCalculator {
  AreaCalculator({required this.shapes});
  final List<Shape> shapes;
  void calculation(){
    for(final i in shapes){
      i.calculator();
      continue;
    }
  }
}

void main(){
  final square = Square(edge: 4);
  final circle = Circle(radius: 3);
  final triangle = Triangle(height: 7, base: 10);
  final areaCalculator = AreaCalculator(shapes: [square, circle]);
  areaCalculator.shapes.add(triangle);
  areaCalculator.calculation();
}