import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {
  final String textLabel;
  final IconData icon;
  final int? maxLength;
  final TextInputType typeIn;
  final List<TextInputFormatter>? inputFormatter;
  final bool readOnly;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChange;
  final TextEditingController controller;

  const TextFieldWidget({
    super.key,
    required this.textLabel,
    required this.icon,
    this.typeIn = TextInputType.text,
    this.inputFormatter,
    this.maxLength,
    this.readOnly = false,
    this.onTap,
    this.onChange,
    required this.controller,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: widget.inputFormatter,
      readOnly: widget.readOnly,
      keyboardType: widget.typeIn,
      onTap: widget.onTap,
      onChanged: widget.onChange,
      style: const TextStyle(
        fontSize: 16,
        fontFamily: "JosefinSans",
        fontWeight: FontWeight.w400,
      ),
      maxLength: widget.maxLength,
      controller: widget.controller,
      decoration: InputDecoration(
          suffixText: widget.maxLength != null
              ? "${widget.controller.text.length}/10"
              : null,
          counter: const SizedBox.shrink(),
          prefixIcon: Icon(widget.icon),
          labelText: widget.textLabel,
          labelStyle: const TextStyle(
            color: Color(0xff505050),
            fontFamily: "JosefinSans",
            fontWeight: FontWeight.w400,
          ),
          floatingLabelStyle: const TextStyle(
              color: Color(0xff014371),
              fontFamily: "JosefinSans",
              fontWeight: FontWeight.w700),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  BorderSide(color: const Color(0xff505050).withOpacity(0.5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xff014371)))),
    );
  }
}
