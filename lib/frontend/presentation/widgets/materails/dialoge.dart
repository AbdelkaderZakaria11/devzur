import 'package:flutter/material.dart';

class DialogeAlertDelete extends StatelessWidget {
  const DialogeAlertDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(
        Icons.delete,
      ),
      iconColor: Colors.red,
      content: const Text("are you sure you want to delete this item?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }
}
