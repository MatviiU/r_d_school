class User{
  User(this.name, this.role);

  String name;
  String role;

  factory User.admin(){
    return User('Admin', 'admin');
  }
}