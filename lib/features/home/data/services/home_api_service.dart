import 'dart:convert';
import 'package:http/http.dart' as http;
import '../product_model.dart'; 

class HomeApiService {

  Future<List<ProductModel>> fetchProducts() async {

    final url = Uri.parse('https://fakestoreapi.com/products');
 
    final response = await http.get(url   ,   headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },);


    if (response.statusCode == 200) {
  
      final List<dynamic> decodedData = json.decode(response.body);

      return decodedData.map((item) => ProductModel.fromJson(item)).toList();
    } else {
  
      throw Exception('getting data from server failed');
    }
  }
}
