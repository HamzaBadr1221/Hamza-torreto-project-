import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

import '../cubit/auth_cubit.dart';
import '../cubit/auth_state.dart';
import '../../data/models/verify_email_request.dart';

class VerificationPage extends StatefulWidget {
  final String email;

  const VerificationPage({
    super.key,
    required this.email,
  });

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final TextEditingController otpController = TextEditingController();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  void verifyOtp() {
    final otp = otpController.text.trim();

    if (otp.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter the 6-digit OTP'),
        ),
      );
      return;
    }

    context.read<AuthCubit>().verifyUserEmail(
      VerifyEmailRequest(
        email: widget.email,
        otp: otp,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          loginSuccess: () {},
          registerSuccess: () {},
          verifyEmailSuccess: () {
            context.go('/products');
          },
          resendOtpSuccess: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('OTP sent again'),
              ),
            );
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Verification'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () =>  context.go('/sign-up'),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 40),

              const Text(
                'Verify your email',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                'Enter the OTP sent to\n${widget.email}',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              Pinput(
                controller: otpController,
                length: 6,
                keyboardType: TextInputType.number,
              ),

              const SizedBox(height: 30),

              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  final isLoading = state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  );

                  return SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: isLoading ? null : verifyOtp,
                      child: isLoading
                          ? const CircularProgressIndicator()
                          : const Text('Verify'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}