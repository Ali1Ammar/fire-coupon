import 'package:flutter/material.dart';

showString(BuildContext context, String txt) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('alert'),
            content: Text(txt),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          ));
}

showSnackBar(BuildContext context, String txt) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(txt),
    ));
