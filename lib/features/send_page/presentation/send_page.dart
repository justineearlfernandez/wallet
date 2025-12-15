import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/features/login/presentation/pages/login_page.dart';

class SendPage extends StatefulWidget {
  const SendPage({super.key});

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  final TextEditingController _controller = TextEditingController();

  void _handleSubmit() {
    final input = _controller.text.trim();

    if (input.isEmpty) {
      _showBottomSheet('Error', 'Please enter a number.');
      return;
    }

    final number = num.tryParse(input);
    if (number == null) {
      _showBottomSheet('Error', 'Invalid number format.');
      return;
    }

    // You can add any validation logic here
    if (number <= 0) {
      _showBottomSheet('Error', 'Number must be greater than zero.');
      return;
    }

    _showBottomSheet('Success', 'You entered: $number');
  }

  void _showBottomSheet(String title, String message) {
    showModalBottomSheet(
      context: context,
      backgroundColor: title == 'Success' ? Colors.green[100] : Colors.red[100],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
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
                    color:
                        title == 'Success'
                            ? Colors.green[800]
                            : Colors.red[800],
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(message, style: const TextStyle(fontSize: 16)),
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: const Text('Close'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Number Input'), actions: [
        
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GestureDetector(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: Icon(Icons.logout, color: Colors.black, size: 30)),
          ),
        
      ],),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d*\.?\d*'),
                ), // allow numbers + decimal
              ],
              decoration: const InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _handleSubmit,
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
