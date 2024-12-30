import 'package:flutter/material.dart';

Future<dynamic> showLoadingIndicator(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      );
    },
  );
}
