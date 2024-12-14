import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pasalpintar_mobile/content/root/landing.dart';
import 'package:pasalpintar_mobile/content/pages/signin.dart'; // Impor halaman SignIn
import 'package:pasalpintar_mobile/content/pages/signup.dart'; // Impor halaman SignUp

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/landing': (context) => const LandingPage(),
        '/signin': (context) => SignIn(), // Menambahkan rute SignIn
        '/signup': (context) => SignUp(), // Menambahkan rute SignUp
      },
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
    // Delay untuk menampilkan splash screen beberapa detik
    Timer(const Duration(seconds: 3), () {
      // Pindah ke LandingPage setelah 3 detik
      Navigator.pushReplacementNamed(context, '/landing');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/logo/pasalpintar.png", // Pastikan path gambar benar
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
