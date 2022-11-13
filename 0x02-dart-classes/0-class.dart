class User {
  String? name;
  showName() {
    print('Hello ${name}');
  }

}

void main() {
  final firstPer = User();
  firstPer.name = "Youssef Belhadj";
  print(firstPer.showName());
}

