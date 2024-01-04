import 'package:fireflutter/constants/colors.dart';
import 'package:flutter/material.dart';

const TextStyle descriptionStyle = TextStyle(
  fontSize: 12,
  color: textLight,
  fontWeight: FontWeight.w200,
);

const TextStyle appbarTextStyle = TextStyle(
  fontSize: 20,
  color: textWhite,
  fontWeight: FontWeight.bold,
);

const InputDecoration inputFeildDecoration = InputDecoration(
  contentPadding: EdgeInsets.only(left: 20, top: 20),
  hintText: "e-mail",
  hintStyle: TextStyle(
    color: textLight,
    fontSize: 18,
  ),
  fillColor: bgBlack,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.yellow, width: 1),
    borderRadius: BorderRadius.all(
      Radius.circular(100),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.yellow, width: 1),
    borderRadius: BorderRadius.all(
      Radius.circular(100),
    ),
  ),
);
