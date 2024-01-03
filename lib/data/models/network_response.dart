class NetworkResponse{
  final int statusCode;
  final bool isSuccees;
  final Map<String,dynamic>? body;
  NetworkResponse(this.isSuccees, {required this.statusCode, required this.body});
}