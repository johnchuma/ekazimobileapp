// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
Widget DateForm({hint,key,TextEditingController? textEditingController,validator,isPassword =false}){
  return  Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: DatePickerDialog(initialDate: DateTime.now(), firstDate: DateTime.now().subtract(const Duration(days:25050)), lastDate: DateTime.now()),
              )),
    ),
  );
}