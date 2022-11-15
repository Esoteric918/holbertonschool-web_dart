import 'dart:convert';
// import 'dart:html';
import 'dart:io';

Future<void> printBbCharacters() async {
  const url = 'https://breakingbadapi.com/api/characters';
  final response = await HttpClient().getUrl(Uri.parse(url));
  final contents = await response.close();
  final json = await contents.transform(utf8.decoder).join();
  final data = jsonDecode(json) as List;
  for (final character in data) {
    print(character['name']);
  }
}

main() async {
  await printBbCharacters();
}
