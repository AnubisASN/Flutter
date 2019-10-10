import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';

class http {
  _getLogin() async {
    var url = 'http://www.hbzayun.com/OfflineFace/testAdminLogin';
    var httpClient = new HttpClient();
    String json;
    Map data;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.OK) {
        json = await response.transform(utf8.decoder).join();
          data = jsonDecode(json);
          return data;
      } else {
        print("失败");
      }
    }catch(exception){
      json="Error";
    }
  }

}

