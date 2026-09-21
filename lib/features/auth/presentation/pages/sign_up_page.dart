// import 'package:eshop_project/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../validations.dart' show EmailValidator, PasswordValidator;
import '../../presentation/widget/custom_widget.dart';
import '../cubit/auth_cubit.dart';
import '../cubit/auth_state.dart';
import '../../data/models/register_request.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {

    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  void register() {
    if (!(formKey.currentState?.validate() ?? false)) {
      return; // stops here if any field's validator returns an error message
    }

    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final firstName = firstNameController.text.trim();
    final lastName = lastNameController.text.trim();

    context.read<AuthCubit>().registerUser(
      RegisterRequest(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
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
          registerSuccess: () {
            context.go('/verification', extra: emailController.text.trim());
          },
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
          title: const Text('Sign Up'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  // Google
                  Container(
                    width: 300,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppAssets.image, width: 50, height: 50),
                        SizedBox(width: 20),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Apple
                  Container(
                    width: 300,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.apple, size: 50),
                        SizedBox(width: 20),
                        Text(
                          "Sign in with Apple",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Facebook
                  Container(
                    width: 300,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook_rounded,
                          size: 50,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Sign in with Facebook",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  // Last Name
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextFieldWidget(
                          controller: firstNameController,
                          hintText: 'First Name',
                        ),
                        SizedBox(height: 16),
                        CustomTextFieldWidget(
                          controller: lastNameController,
                          hintText: 'Last Name',
                        ),
                        SizedBox(height: 16),
                        CustomTextFieldWidget(
                          controller: emailController,
                          hintText: 'Enter Your Mail',
                          validator: EmailValidator().validate,
                        ),
                        SizedBox(height: 16),
                        CustomTextFieldWidget(
                          controller: passwordController,
                          hintText: 'Enter Your Passwrod',
                          validator: PasswordValidator().validate,
                        ),
                      ],
                    ),
                  ), // Form that contain email and password input from user
                  SizedBox(height: 16),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      final isLoading = state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      );
                      return Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: isLoading ? null : register,
                              child: isLoading
                                  ? const CircularProgressIndicator()
                                  : const Text('Sign Up'),
                            ),
                          ),
                          SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                context.go('/login');
                              },
                              child: Text("Login"),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
