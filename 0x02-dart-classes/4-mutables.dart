class Password {
  String password = '';

  Password({required this.password});

  isValid() {
    return (password.length >= 8 &&
        password.length <= 16 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[0-9]')));
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }

  //Getter

  String get getPassword => password;
  // Setter
  set setPassword(String password) => this.password = password;
}

void main() {
  final password = Password(password: "Passwordecode");
  print(password.isValid());
  print(password.toString());
  password.password = "Youssef4321";
  print(password.isValid());
  print(password.toString());
}
