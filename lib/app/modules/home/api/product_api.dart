import 'dart:developer';
import 'package:http/http.dart' as http;

class ProductAPi {
  Future<void> getProductDetails() async {
    var headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    final url = Uri.parse('https://fakestoreapi.com/products');
    final http.Response resp = await http.get(
      url,
      headers: headers,
    );
    log(resp.body);
  }
}
