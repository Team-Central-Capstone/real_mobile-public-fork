import 'package:encrypt/encrypt.dart' as encrypted;
import 'package:real/constants/secrets.dart';
import 'package:real/constants/urls.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

import 'package:real/data/dataproviders/api_exception.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/logic/cubit/auth_cubit.dart';

class ApiBaseHelper {
  final key = encrypted.Key.fromBase64(encryptionKey);
  final iv = encrypted.IV.fromBase64(encryptionIV);

  /// Base Get Method
  Future<dynamic> get(String url) async {
    print('Requested api GET, url $url');
    var responseJson;
    try {
      var fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

      final encrypter =
          encrypted.Encrypter(encrypted.AES(key, mode: encrypted.AESMode.ecb));

      final encryptedFbId = encrypter.encrypt(fbId!, iv: iv);
      // final encryptedFbId = encrypter.encrypt("109409728062644297175", iv: iv);

      HttpClient client = HttpClient();

      client.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);

      HttpClientRequest request = await client.getUrl(Uri.parse(urlBase + url));

      request.headers.set('content-type', 'application/json');
      request.headers.set('UID', fbId);
      request.headers.set('eUID', encryptedFbId.base64);

      final response = await request.close();

      // String reply = await response.transform(utf8.decoder).join();

      // final response = await http.get(Uri.parse(_baseUrl + url));
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('Recieved api GET, url $url');
    return responseJson;
  }

  /// Base Post Method
  Future<dynamic> post(String url, var objToPost) async {
    print('Requested api POST, url $url');
    var responseJson;
    try {
      var fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

      final encrypter =
          encrypted.Encrypter(encrypted.AES(key, mode: encrypted.AESMode.ecb));

      final encryptedFbId = encrypter.encrypt(fbId!, iv: iv);

      HttpClient client = HttpClient();

      client.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);

      HttpClientRequest request =
          await client.postUrl(Uri.parse(urlBase + url));

      request.headers.set('content-type', 'application/json');
      request.headers.set('UID', fbId);
      request.headers.set('eUID', encryptedFbId.base64);
      request.write(objToPost);

      // print(objToPost);
      final response = await request.close();
      // response.transform(utf8.decoder).listen((contents) {
      //   print(contents);
      // });

      // String reply = await response.transform(utf8.decoder).join();

      // final response = await http.get(Uri.parse(_baseUrl + url));
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('Recieved api POST, url $url');
    return responseJson;
  }

  /// Base Post with empty body Method
  Future<dynamic> postWithoutBody(String url) async {
    print('Requested api POST, url $url');
    var responseJson;
    try {
      var fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

      final encrypter =
          encrypted.Encrypter(encrypted.AES(key, mode: encrypted.AESMode.ecb));

      final encryptedFbId = encrypter.encrypt(fbId!, iv: iv);

      HttpClient client = HttpClient();

      client.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);

      HttpClientRequest request =
          await client.postUrl(Uri.parse(urlBase + url));

      request.headers.set('content-type', 'application/json');
      request.headers.set('UID', fbId);
      request.headers.set('eUID', encryptedFbId.base64);

      // print(objToPost);
      final response = await request.close();
      // response.transform(utf8.decoder).listen((contents) {
      //   print(contents);
      // });

      // String reply = await response.transform(utf8.decoder).join();

      // final response = await http.get(Uri.parse(_baseUrl + url));
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('Recieved api POST, url $url');
    return responseJson;
  }

  /// Base Put Method
  Future<dynamic> put(String url, var objToPut) async {
    print('Requested api PUT, url $url');
    var responseJson;
    try {
      var fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

      final encrypter =
          encrypted.Encrypter(encrypted.AES(key, mode: encrypted.AESMode.ecb));

      final encryptedFbId = encrypter.encrypt(fbId!, iv: iv);

      HttpClient client = HttpClient();

      client.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);

      HttpClientRequest request = await client.putUrl(Uri.parse(urlBase + url));

      request.headers.set('content-type', 'application/json');
      request.headers.set('UID', fbId);
      request.headers.set('eUID', encryptedFbId.base64);
      request.write(objToPut);

      // print(objToPost);
      final response = await request.close();
      // response.transform(utf8.decoder).listen((contents) {
      //   print(contents);
      // });

      // String reply = await response.transform(utf8.decoder).join();

      // final response = await http.get(Uri.parse(_baseUrl + url));
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('Recieved api PUT, url $url');
    return responseJson;
  }

  /// Base Patch Method
  Future<dynamic> patch(String url, var objToPatch) async {
    print('Requested api PATCH, url $url');
    var responseJson;
    try {
      var fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

      final encrypter =
          encrypted.Encrypter(encrypted.AES(key, mode: encrypted.AESMode.ecb));

      final encryptedFbId = encrypter.encrypt(fbId!, iv: iv);

      HttpClient client = HttpClient();

      client.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);

      HttpClientRequest request =
          await client.patchUrl(Uri.parse(urlBase + url));

      request.headers.set('content-type', 'application/json');
      request.headers.set('UID', fbId);
      request.headers.set('eUID', encryptedFbId.base64);
      print(objToPatch);

      request.write(objToPatch);

      final response = await request.close();

      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('Recieved api PATCH, url $url');
    return responseJson;
  }

  dynamic _returnResponse(HttpClientResponse response) async {
    switch (response.statusCode) {
      case 200:
        // var responseJson = json.decode(response.body.toString());
        // var responseJson = await response.transform(utf8.decoder).join();
        // print(responseJson);
        return response;
      case 201:
        return response;
      case 204:
        return response;
      // case 404:
      //   print('404 NOT FOUND');
      //   return response;
      case 400:
        throw BadRequestException(
            await response.transform(utf8.decoder).join());
      case 401:
      case 403:
        throw UnauthorisedException(
            await response.transform(utf8.decoder).join());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
