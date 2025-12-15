import 'package:flutter/material.dart';

void showBottomSheetMessage(
  BuildContext context, {
  required String title,
  required String message,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: title == 'Success' ? Colors.green[100] : Colors.red[100],
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => Padding(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        children: [
          ListTile(
            leading: Icon(
              title == 'Success' ? Icons.check_circle : Icons.error,
              color: title == 'Success' ? Colors.green : Colors.red,
              size: 40,
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: title == 'Success' ? Colors.green[800] : Colors.red[800],
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(message, style: const TextStyle(fontSize: 16)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ),
        ],
      ),
    ),
  );
}
