import 'package:flutter/material.dart';

const authDecoration = InputDecoration(

  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 1,color: Colors.blue)

  ),
  enabledBorder: OutlineInputBorder(
    borderRadius:BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(color: Colors.transparent),

  ),
    disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
),
    fillColor: Color(0xFFEFF3FF),
  filled: true,
  hintText: "User Name",
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red,width: 1)
  )

);