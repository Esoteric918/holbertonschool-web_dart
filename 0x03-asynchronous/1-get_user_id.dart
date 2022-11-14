import 'dart:convert';

Future<String> getUserId()async{
  // get the id from the function fetchUserData and return it
  final String userId = await fetchUserData();
  return json.decode(userId)['id'];
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

main() async {
  print(await getUserId());
}
