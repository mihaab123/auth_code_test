import 'package:auth_code_test/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTextField extends StatefulWidget {
  final TextEditingController controller;
  const LoginTextField({Key? key, required this.controller}) : super(key: key);

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  bool showFlag = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(10)),
        child: TextField(
          onChanged: (value) {
            setState(() {
              if (value.isNotEmpty) {
                showFlag = value.contains("+");
              } else {
                showFlag = true;
              }
            });
          },
          controller: widget.controller,
          decoration: InputDecoration(
            prefixIcon: showFlag
                ? Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      "assets/flag.svg",
                      height: 12,
                      width: 16,
                    ),
                  )
                : null,
            hintText: "Phone number or Email",
            hintStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            label: const Text("Phone number or Email"),
            labelStyle: const TextStyle(fontSize: 18, color: Colors.black),
            border: InputBorder.none,
          ),
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
