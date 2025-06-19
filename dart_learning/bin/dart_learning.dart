void main(){
  String separator = List.filled(40, '=').join();
  print(separator);
  print("Task 1");
  print(separator);
  mathOperations();
  print(separator);
}

void mathOperations(){
  double width = 18.4;
  double height = 30.9;
  double area = width * height;
  double perimeter = (width + height) * 2;
  int squares = area ~/ 1;
  print("Area is $area");
  print("Perimeter is $perimeter");
  print("Full 1x1 squares: $squares");
}

