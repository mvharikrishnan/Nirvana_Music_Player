import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/widgets/textFormField.dart';

class textFieldForSearchAndCreatePlaylist extends StatelessWidget {
  const textFieldForSearchAndCreatePlaylist({
    super.key,
    required this.HintText,
    required this.SearchIcon,
    required this.textController,
    required this.validator,
    this.onChanged,
  });
  final String HintText;
  final IconData SearchIcon;
  final TextEditingController textController;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      controller: textController,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        hintText: HintText,
        prefixIcon: Icon(
          SearchIcon,
          size: 25,
        ),
      ),
    );
  }
}
