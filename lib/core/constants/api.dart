import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;

class ApiHelper {
  static String baseUrl = dotenv.env['BASE_URL'] ?? '';
  static Map<String, String> loginHeader = {
    'Content-Type': 'application/x-www-form-urlencoded',
  };
}
