import 'package:flutter/material.dart';
import 'package:flutter_chat_app/Services/Auth/auth_gate.dart';
import 'package:flutter_chat_app/Services/Auth/auth_service.dart';
import 'package:flutter_chat_app/pages/login_page.dart';
import 'package:provider/provider.dart';
import 'Services/Auth/login_or_register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ChangeNotifierProvider(create: (context)=>AuthService(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthGate(),
    );
  }
}

