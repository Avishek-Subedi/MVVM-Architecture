import 'dart:ffi';

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.black,
      textColor: Colors.white,
    );
  }

  static flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        reverseAnimationCurve: Curves.easeOut,
        positionOffset: 20,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),

        flushbarPosition: FlushbarPosition.BOTTOM,
        // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        message: message,
        backgroundColor: Colors.red,
        // title: "sad",
        messageColor: Colors.white,
        duration: const Duration(seconds: 3),
      )..show(context),
    );
  }

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
      ),
    );
  }
}
