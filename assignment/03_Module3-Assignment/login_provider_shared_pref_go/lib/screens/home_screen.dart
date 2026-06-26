import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_provider_shared_pref_go/shared_pref_manager/shared_pref_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home Page', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () async {
              final service = SharedPrefManager();
              await service.logout();
              context.go('/login');
            },
            icon: Icon(Icons.logout, color: Colors.white),
          ),

          SizedBox(width: 20),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Expanded(
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/ronaldo_sui_image.gif'),
              ),
            ),
          ),
          Center(
            child: Expanded(
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/ronaldo_sui_image.gif'),
              ),
            ),
          ),
          Center(
            child: Expanded(
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/ronaldo_sui_image.gif'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
