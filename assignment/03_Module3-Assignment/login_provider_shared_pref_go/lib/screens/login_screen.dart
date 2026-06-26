import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';
import '../widgets/app_title.dart';
import '../widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppTitle(),

                const SizedBox(height: 40),

                AppTextField(label: "Username", controller: usernameController),

                const SizedBox(height: 20),

                AppTextField(
                  label: "Password",
                  controller: passwordController,
                  obscure: true,
                ),

                const SizedBox(height: 40),

                AppButton(
                  title: "Login",
                  color: Colors.blue,
                  onPressed: () async {
                    // Empty field check
                    if (usernameController.text.trim().isEmpty ||
                        passwordController.text.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Please enter username and password"),
                        ),
                      );
                      return;
                    }

                    // Save data using Provider
                    await context.read<AuthProvider>().login(
                      username: usernameController.text.trim(),
                      password: passwordController.text.trim(),
                    );

                    // Navigate to Home
                    if (context.mounted) {
                      context.go('/home');
                    }
                  },
                ),

                const SizedBox(height: 40),

                Row(
                  children: [
                    Expanded(
                      child: SocialButton(
                        icon: Icons.facebook,
                        color: Colors.white70,
                        iconColor: Colors.blue,
                        title: "Facebook",
                        onPressed: () {},
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: SocialButton(
                        icon: Icons.g_mobiledata,
                        title: "Google",
                        iconColor: Colors.green,

                        color: Colors.white70,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
