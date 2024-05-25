import 'dart:io';

// Interface definition
abstract class Shape {
  void calculateArea();
}

// Parent class
class Polygon {
  void display() {
    print('This is a polygon.');
  }
}

// Child class inheriting from Polygon and implementing Shape interface
class Rectangle extends Polygon implements Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  void calculateArea() {
    double area = length * width;
    print('Area of rectangle: $area');
  }
}

// Child class inheriting from Polygon and implementing Shape interface
class Circle extends Polygon implements Shape {
  double radius;

  Circle(this.radius);

  @override
  void calculateArea() {
    double area = 3.14 * radius * radius;
    print('Area of circle: $area');
  }
}

void main() {
  // Create instances of Rectangle and Circle
  Rectangle rectangle = Rectangle(5.0, 3.0);
  Circle circle = Circle(4.0);

  // Displaying information and calculating areas
  rectangle.display();
  rectangle.calculateArea();

  circle.display();
  circle.calculateArea();

  // Method demonstrating the use of a loop
  print('\nCounting from 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // Initializing data from a file
  File file = File('data.txt');
  List<String> lines = file.readAsLinesSync();
  print('\nData from file:');
  lines.forEach((line) => print(line));
}
