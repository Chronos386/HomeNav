import 'package:flutter/material.dart';

abstract class Global {
  static const Color gradOne = Color(0xED0A64E5);
  static const Color gradTwo = Color(0xFF114F88);
  static const Color gradThree = Color(0xFF0A0E42);
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      gradOne,
      gradTwo,
      gradThree,
    ],
  );
  static const Color myPosColor = Colors.red;
  static const Color textColor = Colors.white;
  static const Color iconsColor = Color(0xFFB6B6C0);
  static const Color appBarTwo = Color(0xFF0D3F6C);
  static const Color pickerUnsColor = Color(0x9BDEDEDE);
  static const Color iconBorderColor = Color(0xED5191F1);
  static const Color iconAddedColor = Color(0xEDE7C82E);
  static const Color searchCheckColor = Color(0x895191F1);
  static const Color filterCheckColor = Color(0xFF5191F1);
  static const Color bottomNavBarColor = Color(0xFF080325);
  static const Color borderColor = Color(0xFF130265);
  static const Color appBarPhotoColor = Color(0xFF1F1F1F);
  static const Color appHideBarPhotoColor = Color(0x001f1f1f);
  static const Color photoBackgroundColor = Colors.black;
  static const TextStyle textVeryBig = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textHeader = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textRegularNotBold = TextStyle(
    fontSize: 16,
    color: textColor,
  );
  static const TextStyle textSmall = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textChangeFloor =
      TextStyle(fontSize: 15, color: iconsColor);
  static const TextStyle textSmaller = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textSmallerNotBold = TextStyle(
    fontSize: 12,
    color: textColor,
  );
  static const TextStyle textPickerSmaller = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: pickerUnsColor,
  );
  static const TextStyle textSmallest = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: pickerUnsColor,
  );
  static const TextStyle searchText = TextStyle(
    color: searchCheckColor,
    fontStyle: FontStyle.italic,
  );
  static Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused
    };
    if (states.any(interactiveStates.contains)) {
      return searchCheckColor;
    }
    return textColor;
  }
  static const String urlPict = "http://hyrule.ru/api/pictures/";
}