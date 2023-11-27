class FirebaseResponse {
  final int statusCode;
  final dynamic response;

  FirebaseResponse(this.statusCode, this.response);

  FirebaseResponse.withError(this.response, this.statusCode);

  FirebaseResponse.withSuccess(this.response,this.statusCode);
}
