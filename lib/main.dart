import 'package:contacts/android/android.app.dart';
import 'package:contacts/ios/ios.app.dart';
import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  if(Platform.isIOS){
    runApp(IOSApp());
  }
  else{
    runApp(AndroidApp());
  }
}

