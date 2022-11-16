import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> generateQuote(id) async {
  try {
    final response = await http
        .get(Uri.parse('https://breakingbadapi.com/api/quote/random'));
    final quote = jsonDecode(response.body)[0]['quote'];
    final author = jsonDecode(response.body)[0]['author'];
    return "$author : $quote";
  } catch (e) {
    return "There are no quotes";
  }
}

main() async {
  print(await generateQuote(1));
  print(await generateQuote(28));
  print(await generateQuote(23));
  print(await generateQuote(2022));
}
