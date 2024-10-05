import 'dart:async';
import 'package:flutter/material.dart';
import 'package:projektes/pages/auth/signin.dart';
import 'package:projektes/theme.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Inisialisasi AnimationController untuk animasi scale (maju mundur)
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true); // Animasi maju mundur (bolak-balik)

    // Navigasi ke halaman Home setelah 3 detik
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignIn(),
        ),
      ),
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
      backgroundColor: putih,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: 1 + _controller.value * 0.2, // Skala dari 1.0 hingga 1.2
              child: child, // Ini adalah widget yang dianimasikan (gambar)
            );
          },
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logoilg.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
