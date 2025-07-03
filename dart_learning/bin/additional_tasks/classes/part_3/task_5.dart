class User{
  User(this.name, this.email, this.userName){
    final index = email.indexOf('@');
    userName = email.substring(0, index);
  }

  String name;
  String email;
  late String userName;
}
