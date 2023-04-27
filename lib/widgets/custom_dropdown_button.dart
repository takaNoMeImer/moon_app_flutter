// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownButton({super.key, required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(53, 53, 53, 1.0),
          borderRadius: BorderRadius.circular(10)),
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButton(
        isExpanded: true,
        underline: Container(
          height: 2,
          color: Colors.transparent,
        ),
        onChanged: (_) {},
        dropdownColor: Color.fromARGB(255, 54, 54, 54),
        style: TextStyle(color: Colors.white),
        hint: Text(
          "Elige una opcion",
          style: TextStyle(color: Color.fromRGBO(116, 116, 116, 1)),
        ),
        items: values.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
