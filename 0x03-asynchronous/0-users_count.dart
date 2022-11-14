Future<void> usersCount() {
  return Future(fetchUsersCount).then((count) {
    print('$count');
  });
}

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

main() async {
  await usersCount();
}
