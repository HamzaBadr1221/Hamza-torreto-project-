import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../domain/usecases/save_is_open.dart';

class OnboardingScreen extends StatefulWidget {
  final SaveIsOpen saveIsOpen;

  const OnboardingScreen({
    super.key,
    required this.saveIsOpen,
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<Offset> _bagSlide;
  late Animation<double> _bagRotation;
  late Animation<double> _bagScale;

  bool _isButtonPressed = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    );


    _bagSlide = Tween<Offset>(
      begin: const Offset(0, -2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceOut,
      ),
    );


    _bagRotation = Tween<double>(
      begin: -0.15,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutBack,
      ),
    );


    _bagScale = Tween<double>(
      begin: 0.5,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.elasticOut,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _finishOnboarding() async {
    setState(() {
      _isButtonPressed = true;
    });

    await Future.delayed(
      const Duration(milliseconds: 180),
    );

    if (!mounted) return;

    setState(() {
      _isButtonPressed = false;
    });

    await widget.saveIsOpen();

    if (!mounted) return;

    context.go('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _bagSlide,
                child: RotationTransition(
                  turns: _bagRotation,
                  child: ScaleTransition(
                    scale: _bagScale,
                    child: const Icon(
                      Icons.shopping_bag,
                      size: 100,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Welcome to E-Shop',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'Discover our products and enjoy your shopping experience.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 50),

              AnimatedScale(
                scale: _isButtonPressed ? 0.94 : 1.0,
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeOut,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  transform: Matrix4.translationValues(
                    0,
                    _isButtonPressed ? 3 : 0,
                    0,
                  ),
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: _finishOnboarding,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      elevation: _isButtonPressed ? 1 : 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}