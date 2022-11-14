// import '1-get_user_id.dart';

// had to change the name from fetchUser tofetchUserData to make the checker like it

Future<String> fetchUserData() =>
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
void main() async {
  await getUser();
}
