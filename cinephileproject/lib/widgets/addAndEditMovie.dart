// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Title of fields

Widget addAndEditMovieTitile(String name) {
  return Padding(
    padding: const EdgeInsets.only(top: 8, bottom: 8),
    child: Text(
      name,
      style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),
    ),
  );
}

//Textformfield

Widget addAndEditMovieTextField(
  String hintText,
  TextEditingController controller,
  String errormessage,
) {
  return Container(
    width: 170,
    decoration: BoxDecoration(),
    child: Column(
      children: [
        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return errormessage;
            } else {
              return null;
            }
          },
          controller: controller,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.only(left: 13),
              hintText: hintText,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 2)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.black, width: 1.5),
              )),
        ),
      ],
    ),
  );
}
