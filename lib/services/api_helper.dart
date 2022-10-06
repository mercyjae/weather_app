class APIHelper {

  Map<String, String> requestHeadersWithBearer(String token) => {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $token',
  };

  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  Map<String, String> customAuthHeader({String? token, String? auth}) => {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    auth!: token!,
  };

}