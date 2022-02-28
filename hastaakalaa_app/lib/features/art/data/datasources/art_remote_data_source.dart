import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

abstract class IArtDataSource {
  Future<Unit> createPost({required Map<String, dynamic> data});
}

class ArtRemoteDataSource implements IArtDataSource {
  final http.Client client;
  ArtRemoteDataSource({required this.client});

  @override
  Future<Unit> createPost({required Map<String, dynamic> data}) async {
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token 021bdc00d8ddda2301cf900911c8accd9ada803c",
    };

    final url = Uri.parse(createPostEndPoint);
    var request = http.MultipartRequest("POST", url);
    request.headers.addAll(headers);

    var price = data["price"];

    request.fields["title"] = data["title"];
    request.fields["description"] = data["description"];
    request.fields["price"] = price.toString();
    request.fields["for_sale"] = data["for_sale"];
    request.fields["status"] = data["status"];

    var pic = await http.MultipartFile.fromPath("image", data["image"].path);
    // Header was not provided
    request.files.add(pic);
    var response = await request.send();
    var responseData = await response.stream.toBytes();
    var responseString = String.fromCharCodes(responseData);
    print('This is the response ${responseString}');

    if (response.statusCode == 200) {
      return unit;
    } else {
      throw ServerException();
    }
  }
}
