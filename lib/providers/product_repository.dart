import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../api/api_services.dart';
import '../models/permission_entity.dart';

class RequestedPermissionListProvider extends ChangeNotifier {
  // ignore: deprecated_member_use
  late List<PermissionEntity> _productList = [];

  List<PermissionEntity> get productList {
    return [..._productList];
  }

  Future<void> getProductList(String roll_number) async {
    var response = await http.get(Uri.parse(
        '${Api.host}/masterfilters/?roll_number=$roll_number&granted=False'));

    List<PermissionEntity> productList = [];
    final responseData = json.decode(response.body) as List<dynamic>;

    for (int i = 0; i < responseData.length; i++) {
      PermissionEntity repo = PermissionEntity(
        date: responseData[i]['date'],
        fromTime: responseData[i]['from_time'],
        slug: responseData[i]['slug'],
        granted: responseData[i]['granted'],
        attachment: responseData[i]['attachment'],
        id: responseData[i]['id'],
        outDate: responseData[i]['out_date'],
        qrCode: responseData[i]['qr_code'],
        reason: responseData[i]['reason'],
        rollNumber: responseData[i]['roll_number'],
      );

      productList.add(repo);
    }

    _productList = productList;
    notifyListeners();
  }
}

class GrantedPermissionListProvider extends ChangeNotifier {
  // ignore: deprecated_member_use
  late List<PermissionEntity> _productList = [];

  List<PermissionEntity> get productList {
    return [..._productList];
  }

  Future<void> getProductList(String roll_number) async {
    var response = await http.get(Uri.parse(
        '${Api.host}/masterfilters/?roll_number=$roll_number&granted=True'));

    List<PermissionEntity> productList = [];
    final responseData = json.decode(response.body) as List<dynamic>;

    for (int i = 0; i < responseData.length; i++) {
      PermissionEntity repo = PermissionEntity(
        date: responseData[i]['date'],
        fromTime: responseData[i]['from_time'],
        slug: responseData[i]['slug'],
        granted: responseData[i]['granted'],
        attachment: responseData[i]['attachment'],
        id: responseData[i]['id'],
        outDate: responseData[i]['out_date'],
        qrCode: responseData[i]['qr_code'],
        reason: responseData[i]['reason'],
        rollNumber: responseData[i]['roll_number'],
      );

      productList.add(repo);
    }

    _productList = productList;
    notifyListeners();
  }
}

class PermissionProvider extends ChangeNotifier {
  // ignore: deprecated_member_use
  late PermissionEntity _product;

  PermissionEntity get product {
    return _product;
  }

  Future<void> getProductList(String id) async {
    var response = await http.get(Uri.parse('${Api.host}/permission/$id'));

    final responseData = json.decode(response.body);

    PermissionEntity repo = PermissionEntity(
      date: responseData['date'],
      fromTime: responseData['from_time'],
      slug: responseData['slug'],
      granted: responseData['granted'],
      attachment: responseData['attachment'],
      id: responseData['id'],
      outDate: responseData['out_date'],
      qrCode: responseData['qr_code'],
      reason: responseData['reason'],
      rollNumber: responseData['roll_number'],
    );

    _product = repo;
    notifyListeners();
  }
}
