import 'package:docdoc_1/core/themes/styles.dart';
import 'package:flutter/material.dart';

void showErrorAlterDialog(BuildContext context, String error) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red),
        content: Text(error, style: Styles.font15BlackMeduim),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              //to exit the loading state in signup
              // Navigator.pop(context);
            },
            child: Text("Got it", style: Styles.font14BlueSemiBold),
          ),
        ],
      );
    },
  );
}
