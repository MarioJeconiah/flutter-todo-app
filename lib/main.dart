import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pert6labpm/providers/auth_notifier.dart';
import 'package:pert6labpm/screens/auth_gate.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (_) => AuthNotifier(),
    child: const MaterialApp(
      home: AuthGate(),
    ),
    );
  }
}