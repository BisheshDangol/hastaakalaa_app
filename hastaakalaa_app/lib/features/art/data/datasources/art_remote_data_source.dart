import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/features/art/data/models/art_model.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

abstract class IArtDataSource {
  Future<Unit> createPost({required Map<String, dynamic> data});
  Future<List<ArtModel>> getArtList({required String data});
  Future<List<ArtModel>> getAllArtPost();
  Future<String> postLike({required int? data});
  Future<String> postBookmark({required int? data});
  Future<List<ArtModel>> getFilterArtPost({required String? data});
  Future<List<ArtModel>> getAllBookmarkPost();
  Future<List<ArtModel>> buyArtPost();
  Future<List<ArtModel>> sellArtPost();
  Future<List<ArtModel>> retrieveArtPost();
}

class ArtRemoteDataSource implements IArtDataSource {
  final http.Client client;
  ArtRemoteDataSource({required this.client});

  @override
  Future<Unit> createPost({required Map<String, dynamic> data}) async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
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

    debugPrint('This is the sent image: ${data["image"].path}');

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

  @override
  Future<List<ArtModel>> getArtList({required String data}) async {
    debugPrint('${data}');
    debugPrint('${getAllArtList}${data}');
    final response = await client.get(
      Uri.parse('${getAllArtList}${data}'),
    );

    // debugPrint('from remote : ${response.body}');

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => ArtModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ArtModel>> getAllArtPost() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    final response =
        await client.get(Uri.parse(retrieveArtPostEndpoint), headers: headers);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => ArtModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> postLike({required int? data}) async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    String endPointPatientValue = data.toString();
    final url = Uri.parse('$likePostEndpoint$endPointPatientValue');
    debugPrint(url.toString());
    final response = await client.post(url, headers: headers);

    int code = response.statusCode;
    debugPrint('$code');
    debugPrint(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> postBookmark({required int? data}) async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    debugPrint('===============');
    debugPrint('${userToken}');
    debugPrint('===============');
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    String endPointPatientValue = data.toString();
    final url = Uri.parse('$bookmarkPostEndpoint$endPointPatientValue');
    debugPrint(url.toString());
    final response = await client.post(url, headers: headers);

    int code = response.statusCode;
    debugPrint('$code');
    debugPrint(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ArtModel>> getFilterArtPost({required String? data}) async {
    Uri url = Uri.parse('${getFilterArtEndPoint}${data}');
    final response = await client.get(
      url,
    );

    debugPrint(url.toString());

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => ArtModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ArtModel>> getAllBookmarkPost() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    final response = await client.get(
      Uri.parse(
        getBookmarkEndPoint,
      ),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => ArtModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ArtModel>> buyArtPost() async {
    final response = await client.get(
      Uri.parse(getBuyArtEndpPoint),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => ArtModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ArtModel>> sellArtPost() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    final response = await client.get(
      Uri.parse(
        getSellArtEndPoint,
      ),
      headers: headers,
    );

    debugPrint('${response.statusCode}');

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => ArtModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ArtModel>> retrieveArtPost() async {
    final response = await client.get(
      Uri.parse(retrieveArtList),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => ArtModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
