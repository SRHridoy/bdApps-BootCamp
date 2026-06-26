import 'package:flutter/material.dart';
import 'package:login_provider_shared_pref_go/router/go_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "GoLoginPrefProvider",
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
