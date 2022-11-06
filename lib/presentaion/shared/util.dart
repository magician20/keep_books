import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

//for handling color response and request from server
extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

// String formatDate(Timestamp timestamp) {
//   return DateFormat.yMMMd().format(timestamp.toDate());
// }

String formatDate(DateTime datetime) {
  return DateFormat.yMMMd().format(datetime);
}



DateTime fromTimestampToDatetime(Timestamp timestamp) {
  return DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
}

Timestamp fromDatetimeToTimestamp(DateTime datetime) {
  return Timestamp.fromMillisecondsSinceEpoch(datetime.millisecondsSinceEpoch);
}

// class MyGlobals {
//   static GlobalKey<ScaffoldState> get scaffoldKey => GlobalKey<ScaffoldState>();
// }