import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../core/di/injection_container.dart';
import '../../core/router/main_shell.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/sign_up_page.dart';
import '../../features/auth/presentation/pages/verification_page.dart';
import '../../features/products/presentation/pages/products_page.dart';
import '../../features/products/presentation/pages/product_details_page.dart';
import '../../features/products/presentation/pages/settings.dart';
import '../../features/cart/presentation/pages/cart_screen.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';
import '../../features/onboarding/presentation/pages/onboarding_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',

    routes: [


      GoRoute(
        path: '/splash',
        builder: (context, state) {
          return SplashScreen(
            getIsOpen: InjectionContainer.createGetIsOpen(),
          );
        },
      ),


      GoRoute(
        path: '/onboarding',
        builder: (context, state) {
          return OnboardingScreen(
            saveIsOpen: InjectionContainer.createSaveIsOpen(),
          );
        },
      ),


      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),


      GoRoute(
        path: '/sign-up',
        builder: (context, state) => const SignUpPage(),
      ),


      GoRoute(
        path: '/verification',
        builder: (context, state) {
          final email = state.extra as String;

          return VerificationPage(
            email: email,
          );
        },
      ),


      ShellRoute(
        builder: (context, state, child) {
          return MainShell(
            child: child,
          );
        },

        routes: [

          GoRoute(
            path: '/products',
            builder: (context, state) {
              return BlocProvider(
                create: (context) => InjectionContainer.createCartCubit(),
                child: const ProductsPage(),
              );
            },
          ),


          GoRoute(
            path: '/product-details/:id',
            builder: (context, state) {
              final id = state.pathParameters['id']!;

              return MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) =>
                        InjectionContainer.createProductCubit(),
                  ),


                  BlocProvider(
                    create: (context) =>
                        InjectionContainer.createCartCubit(),
                  ),
                ],
                child: ProductDetailsPage(
                  productId: id,
                ),
              );
            },
          ),


          GoRoute(
            path: '/cart',
            builder: (context, state) {
              return const CartScreen();
            },
          ),


          GoRoute(
            path: '/settings',
            builder: (context, state) {
              return settings();
            },
          ),
        ],
      ),
    ],
  );
}