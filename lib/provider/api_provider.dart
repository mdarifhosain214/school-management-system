import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import '../api_services/Repository/api_repo.dart';
import '../api_services/responseApi/api_response.dart';
import '../model/data_access_param.dart';
import '../model/jwt_token_model.dart';
import '../model/response_model.dart';
import '../utils/code_util.dart';

class ApiProvider with ChangeNotifier {
  final ApiRepo apiRepo;
  ApiProvider(this.apiRepo);
  JwtTokenInfo? _jwtTokenInfo;
  JwtTokenInfo? get jwtTokenInfo => _jwtTokenInfo;
  Future<ResponseModel> jwtCall(
    BuildContext context,
  ) async {
    _jwtTokenInfo = null;

    ApiResponse apiResponse = await apiRepo.jwt();
    ResponseModel responseModel;
    if (apiResponse.response != null &&
        (apiResponse.response!.statusCode == 200 ||
            apiResponse.response!.statusCode == 201)) {
      //    String decompressedJson =   CodeUtil.decompress(apiResponse.response!.data.toString());
      //  log( "token $decompressedJson");
      _jwtTokenInfo = JwtTokenInfo.fromJson(apiResponse.response!.data);

      log(_jwtTokenInfo.toString());
      apiRepo.saveToken(_jwtTokenInfo!.tokenstr);
      //apiRepo.saveExpiryDate(jwtTokenInfo!.expirytime!);
      responseModel = ResponseModel(true, '${apiResponse.response}');
      debugPrint('success');
      admission();
      //showCustomSnackBar('Success', context, isError: false);
    } else {
      if (apiRepo.getUserToken() != null) {
        responseModel = ResponseModel(true, '${apiResponse.response}');
      } else {
        responseModel = ResponseModel(false, '${apiResponse.error}');
      }
      debugPrint('failed');
      //showCustomSnackBar('Success', context, isError: true);
    }
    //notifyListeners();
    return responseModel;
  }




  Future<ResponseModel> admission() async {
    var std_tbl = {
      "instid": "1010",
      "stdid": "S0000000",
      "stdnam": "Moon",
      "stdadr": "Chandpur"
    };
    Map tbl = {"std_tbl": std_tbl};
    String json = jsonEncode(tbl);
    log(json);
    DataAccessParam _dataAccessParam;
    _dataAccessParam = DataAccessParam(
        procName: 'dbo.SP_ENTRY_CODEBOOK_01',
        procID: 'ADNWSTD_SECTINF01',
        parm01: '1010',
        parmJson1: json);

    var encryptedData = CodeUtil.convertToBase64(_dataAccessParam!);
    ResponseModel responseModel;
    ApiResponse apiResponse =
        await apiRepo.dataApi(paramBaseString: encryptedData);

    if (apiResponse.response != null &&
        (apiResponse.response!.statusCode == 200 ||
            apiResponse.response!.statusCode == 201)) {
      String decompressedJson =
          CodeUtil.decompress(apiResponse.response!.data.toString());
      log(' $decompressedJson');

      var jsonResponse = jsonDecode(decompressedJson);
      // for (var element in jsonResponse['Table']) {
      //   _customerList.add(CutomerModel.fromJson(element));
      // }
      responseModel = ResponseModel(true, 'Successful');
    } else {
      responseModel = ResponseModel(false, 'error');
    }
    return responseModel;
  }

  bool _isConnected = false;
  bool get isConnected => _isConnected;
  Future<void> checkInternetConnection({
    required BuildContext context,
  }) async {
    final listener = InternetConnection()
        .onStatusChange
        .listen((InternetStatus status) async {
      switch (status) {
        case InternetStatus.connected:
          _isConnected = true;
          notifyListeners();

          // The internet is now connected
          break;
        case InternetStatus.disconnected:
          bool connect = await checkInternetConnection1();
          if (!connect) {
            _isConnected = false;
            notifyListeners();
          }

          break;
      }
      // if(status== InternetStatus.connected){
      //       _isConnected = true;
      //     notifyListeners();
      //     isDataSending(context: context,local: local,op: op);

      // }
      // else{  _isConnected = false;
      //     notifyListeners();}
    });
  }

  Future<bool> checkInternetConnection1(
      {Duration timeout = const Duration(seconds: 3)}) async {
    try {
      final response = await http
          .get(
            Uri.parse('https://www.google.com/generate_204'),
          )
          .timeout(timeout);

      return response.statusCode == 204;
    } on TimeoutException {
      // Handle timeout gracefully
      print('TimeoutException: The request timed out');
      return false;
    } on SocketException catch (e) {
      // Handle SocketException
      print('SocketException: ${e.message}');
      return false;
    } catch (e) {
      // Handle other unexpected exceptions
      print('Unexpected Exception: ${e.toString()}');
      return false;
    }
  }
}
