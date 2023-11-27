
import 'dart:ffi';

import 'package:edtech_application/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// class ReUseAbleSnackBar{
//
//
//     error(String message){
//       return showTopSnackBar(
//         Overlay.of(Helper.navigatorKey.currentContext!),
//         CustomSnackBar.error(
//           message:message,
//         ),
//       );
//     }
//     info(String message){
//       return showTopSnackBar(
//         Overlay.of(Helper.navigatorKey.currentContext!),
//         CustomSnackBar.info(
//           message:message,
//         ),
//       );
//     }
// }
   successSnack ({String? message,required BuildContext context}){
   showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.success(
      message:message!,
    ),
  );
}
errorSnack({String? message,required BuildContext context}){
       showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          message:message!,
        ),
      );
    }
   infoSnack({String? message,required BuildContext context}){
       showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.info(
          message:message!,
        ),
      );
    }