import 'package:flutter/material.dart';

void snackBarOpen(String message, BuildContext context,
    {Color color = Colors.red}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: color,
    ),
  );
}
