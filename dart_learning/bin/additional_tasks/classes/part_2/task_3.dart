class Student {
  Student(this.name, this.grade);

  Student.withHonors(this.name) : grade = 100;

  String name;
  int grade;
}
