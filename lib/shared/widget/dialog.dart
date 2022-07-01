import 'package:flutter/material.dart';

showString(BuildContext context, String txt) {
  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: Text(''),
            content: Text(txt),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          ));
}

showSnackBar(BuildContext context, String txt) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(txt),
    ));
