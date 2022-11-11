import 'package:flutter/material.dart';

class textFormField extends StatelessWidget {
  const textFormField({
    Key? key,
    required this.hinttext,
    required this.textEditController,
  }) : super(key: key);
  final String hinttext;
  final TextEditingController? textEditController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIconColor: Colors.white,
        hintStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        fillColor: Color.fromARGB(62, 201, 125, 255),
        filled: true,
        hintText: hinttext,
      ),
    );
  }
}
