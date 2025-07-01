import 'dart:math';

class Square{
  Square(this.side);
  double side;

  factory Square.fromArea(double area){
    double side = sqrt(area);
    return Square(side);
  }
}