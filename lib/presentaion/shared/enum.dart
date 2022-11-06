// import 'package:flutter/foundation.dart';

// Dart 2.17 support
enum BookStatusEnum {
  notStarted("Not Started"),
  started("Started"),
  finished("Finished");

  const BookStatusEnum(this.value);
  final String value;
}

// Dart 2.6
// extension BookStatusExtension on BookStatusEnum {
//   static const names = {
//     BookStatusEnum.notStarted: "Not Started",
//     BookStatusEnum.started: "Started",
//     BookStatusEnum.finished: "Finished",
//   };

//   String? get name => names[this];
//   // String get name {
//   //   switch (this) {
//   //     case BookStatusEnum.notStarted:
//   //       return "Not Started";
//   //     case BookStatusEnum.started:
//   //       return "Started";
//   //     case BookStatusEnum.finished:
//   //       return "Finished";
//   //   }
//   // }
// }



// // Dart 2.15 support getting string by using {name} property 
// extension StatusSt on BookStatusEnum {
//   String get inString => describeEnum(this);
// }
