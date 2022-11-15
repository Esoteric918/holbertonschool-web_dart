import 'dart:convert';

Future<String> greetUser() async {
  try {
    var userData = await fetchUserData();
    var user = json.decode(userData) ;
    return " Hello ${user['username']}";
  } catch (e) {
    return "error caught: $e";
  }
}

Future<String>loginUser() async {

  try {
    final bool credentials = await checkCredentials();
    if (credentials) {
      return greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }

}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);
main() async {
  print(await loginUser());
}
