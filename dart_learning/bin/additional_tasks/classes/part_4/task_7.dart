import 'dart:math';

class Square{
  Square(this.side);
  factory Square.fromArea(double area){
    final side = sqrt(area);
    return Square(side);
  }

  double side;
}
