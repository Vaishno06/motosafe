import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const MotoSafeApp());
}

class MotoSafeApp extends StatelessWidget {
  const MotoSafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MotoSafe',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.motorcycle,
              size: 100,
              color: Colors.orange,
            ),
            SizedBox(height: 20),
            Text(
              'MotoSafe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Ride Safe. Ride Smart.',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}