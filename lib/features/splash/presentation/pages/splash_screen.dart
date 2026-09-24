import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../onboarding/domain/usecases/get_is_open.dart';

class SplashScreen extends StatefulWidget {
  final GetIsOpen getIsOpen;

  const SplashScreen({
    super.key,
    required this.getIsOpen,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _checkOnboarding();
  }

  Future<void> _checkOnboarding() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    final isOpen = widget.getIsOpen();

    if (!mounted) return;

    if (isOpen) {
      context.go('/login');
    } else {
      context.go('/onboarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'E-Shop',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}