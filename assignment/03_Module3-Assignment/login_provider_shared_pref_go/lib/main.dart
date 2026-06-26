import 'package:flutter/material.dart';
import 'package:login_provider_shared_pref_go/provider/auth_provider.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthProvider())],
      child: const MyApp(),
    ),
  );
}
