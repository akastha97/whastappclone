import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  const CustomButton({super.key, required this.buttonText});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        widget.buttonText,
        style: const TextStyle(fontSize: 16, color: Colors.blueAccent),
      ),
      onPressed: () {},
    );
  }
}
