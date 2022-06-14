abstract class BaseApiServices {
  Future<dynamic> getGetApiRespose(String url);

  Future<dynamic> getPostApiRespose(String url, dynamic data);
}
