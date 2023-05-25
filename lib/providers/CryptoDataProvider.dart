import 'package:dio/dio.dart';
import 'package:exchange/Network/ApiProvider.dart';
import 'package:exchange/Network/ResponseModel.dart';
import 'package:exchange/models/CryptoModel/AllCryptoModel.dart';
import 'package:flutter/foundation.dart';

class CryptoDataProvider extends ChangeNotifier {
  ApiProvider apiProvider = ApiProvider();
  late AllCryptoModel dataFuture;
  late ResponseModel state;
  var response;
  var defaultChoiceIndex = 0;

  CryptoDataProvider() {
    getTopMarketCapData();
  }

  getTopMarketCapData() async {
    defaultChoiceIndex = 0;
    state = ResponseModel.loading("is Loading...");
    notifyListeners();

    try {
      response = await apiProvider.getTopMarketCapData();

      if (response.statusCode == 200) {
        dataFuture = AllCryptoModel.fromJson(response.data);
        state = ResponseModel.completed(dataFuture);
      } else {
        state = ResponseModel.error("something wrong...");
      }

      notifyListeners();
    } catch (e) {
      state = ResponseModel.error("please check your connection...");
      notifyListeners();
    }
  }
  getTopGainersData() async {
    defaultChoiceIndex = 0;
    state = ResponseModel.loading("is Loading...");
    notifyListeners();

    try {
      response = await apiProvider.getTopGainerData();

      if (response.statusCode == 200) {
        dataFuture = AllCryptoModel.fromJson(response.data);
        state = ResponseModel.completed(dataFuture);
      } else {
        state = ResponseModel.error("something wrong...");
      }

      notifyListeners();
    } catch (e) {
      state = ResponseModel.error("please check your connection...");
      notifyListeners();
    }
  }
  getTopLosersData() async {
    defaultChoiceIndex = 0;
    state = ResponseModel.loading("is Loading...");
    notifyListeners();

    try {
      response = await apiProvider.getTopLosersData();

      if (response.statusCode == 200) {
        dataFuture = AllCryptoModel.fromJson(response.data);
        state = ResponseModel.completed(dataFuture);
      } else {
        state = ResponseModel.error("something wrong...");
      }

      notifyListeners();
    } catch (e) {
      state = ResponseModel.error("please check your connection...");
      notifyListeners();
    }
  }
}
