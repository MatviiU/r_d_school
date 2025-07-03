class User{
  User(this.name, this.role);

  factory User.admin(){
    return User('Admin', 'admin');
  }

  String name;
  String role;
}
