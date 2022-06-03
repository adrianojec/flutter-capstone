import 'package:flutter/material.dart';
import 'package:capstone_flutter/http_exceptions/http_exceptions.dart';

class CustomAlertDialog extends StatelessWidget {
  final String message;

  const CustomAlertDialog({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      content: Text(message),
      actions: [
        MaterialButton(
          child: const Text('Okay'),
          onPressed: () {
            HttpException().resultMessage(message, context);
          },
        ),
      ],
    );
  }
}
