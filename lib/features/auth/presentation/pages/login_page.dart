import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../validations.dart';
import '../../presentation/widget/custom_widget.dart';
import '../cubit/auth_cubit.dart';
import '../cubit/auth_state.dart';
import '../../data/models/login_request.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (formKey.currentState?.validate() ?? false) {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();

      context.read<AuthCubit>().loginUser(
        LoginRequest(email: email, password: password),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          loginSuccess: () {
            context.go('/products');
          },
          registerSuccess: () {},
          verifyEmailSuccess: () {},
          resendOtpSuccess: () {},
          error: (message) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 100,
                  ),
                ),
                const SizedBox(height: 32),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFieldWidget(
                        controller: emailController,
                        hintText: 'Enter Mail',
                        validator: EmailValidator().validate,
                      ),
                      const SizedBox(height: 16),
                      CustomTextFieldWidget(
                        controller: passwordController,
                        hintText: 'Enter Password',
                        validator: PasswordValidator().validate,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),

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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: isLoading ? null : login,
                        child: isLoading
                            ? const CircularProgressIndicator()
                            : const Text('Login')
                      ),
                    );
                  },
                ),

                const SizedBox(height: 15),

                TextButton(
                  onPressed: () {
                    context.go('/sign-up');
                  },
                  child: const Text('Create an account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
