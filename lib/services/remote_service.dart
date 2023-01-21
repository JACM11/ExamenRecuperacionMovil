import 'package:dio_blog/data/models/user/detail.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://parallelum.com.br/fipe/api/v1/carros/marcas/59/modelos/5940/anos/2014-3');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson("["+json+"]");
    }
  }
}
