class Student{
  Student(this.name, this.grade);

  String name;
  int grade;

  Student.withHonors(this.name) : grade = 100;
}