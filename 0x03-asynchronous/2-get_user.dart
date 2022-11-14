// import '1-get_user_id.dart';

Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

Future<void> getUser() async {
  try {
    final String userData = await fetchUserData();
    print(userData);
  } catch (e) {
    print('error caught: $e');
  }
}
main() async {
  getUser();
}
