import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class EnteryProfileField extends StatefulWidget {
  final TextEditingController _textController;
  final Validator validator;
  final String? label;
  final String? hintText;
  final bool? enabledEdit;

  const EnteryProfileField({
    Key? key,
    required TextEditingController textController,
    required this.validator,
    this.label,
    this.hintText,
    this.enabledEdit,
  })  : _textController = textController,
        super(key: key);

  @override
  _EnteryProfileFieldState createState() => _EnteryProfileFieldState();
}

class _EnteryProfileFieldState extends State<EnteryProfileField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabledEdit,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.label,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        fillColor: Colors.white,
        focusColor: const Color.fromARGB(255, 209, 226, 243),
        hoverColor: const Color.fromARGB(255, 193, 220, 228).withOpacity(0.3),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: Color(0xff69639F), width: 2.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
        ),
      ),
      controller: widget._textController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
    );
  }
}
