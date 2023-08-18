class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "https://localhost:7109/";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // booking endpoints
  static const String getPosts = baseUrl + "/posts";

  // login
  static const String login = "${baseUrl}api/auth/login";

}