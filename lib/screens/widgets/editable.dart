import 'package:flutter/material.dart';
import 'package:module_bloc_event/helpers/vars.dart';

class EditableFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String errorText;
  final Function onChanged;
  final int maxLength;
  final TextInputType keyboardType;

  EditableFormField({
    Key key,
    @required this.controller,
    @required this.labelText,
    @required this.errorText,
    @required this.onChanged,
    this.maxLength,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextField(
        maxLength: maxLength ?? null,
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 14.0,
          fontFamily: '$ralewayFont',
        ),
        keyboardType: this.keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          errorText: errorText,
          contentPadding: EdgeInsets.all(15.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black87,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black87,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black87,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black87,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          errorStyle: TextStyle(
            color: Colors.red,
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.black87,
            fontSize: 14.0,
            fontFamily: '$ralewayFont',
          ),
        ),
      ),
    );
  }
}
