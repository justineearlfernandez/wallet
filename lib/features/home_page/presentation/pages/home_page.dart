import 'package:flutter/material.dart';
import 'package:my_app/features/home_page/presentation/widgets/organism/balance_section.dart';
import 'package:my_app/features/home_page/presentation/widgets/organism/home_actions.dart';
import 'package:my_app/features/login/presentation/pages/login_page.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hideBalance = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GestureDetector(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },child: Icon(Icons.logout, color: Colors.black, size: 30)),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            const SizedBox(height: 50),
          BalanceSection(
            hidden: hideBalance,
            onToggle: () {
              setState(() {
                hideBalance = !hideBalance;
              });
            },
          ),
          const SizedBox(height: 50),
          const HomeActions(),
          Spacer(),
        ],
      ),
    );
  }
}


