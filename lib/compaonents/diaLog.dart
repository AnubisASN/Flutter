import 'package:flutter/material.dart';

// ignore: type_argument_not_matching_bounds
void showLoginOutDialog() {
  showDialog(
      context: context,
      barrierDismissible: false,   // 点击外部不消失
      builder: (BuildContext context){
        return CommonDialog(
          title: "确定退出当前账号？",
          onNavClickListener: (){
            print("onNavClickListener  ");
            Navigator.of(context).pop(1);
          },
          onPosClickListener: (){
            print("loginaa  ");
            Navigator.of(context).pop(1);
            _loginOut();
          },
        );
      }
  );
}
