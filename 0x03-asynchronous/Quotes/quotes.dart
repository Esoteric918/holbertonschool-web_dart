import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> generateQuote(id) async {
  try {
    final response = await http
        .get(Uri.parse('https://breakingbadapi.com/api/quote/random'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data[0]['author'] + ' : ' + data[0]['quote'];
    } else {
      return 'Error: ${response.statusCode}';
    }
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
