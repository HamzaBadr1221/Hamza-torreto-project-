import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/sign_up_page.dart';
import '../../features/auth/presentation/pages/verification_page.dart';
import '../../features/products/presentation/pages/products_page.dart';
import '../../features/products/presentation/pages/product_details_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
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

      GoRoute(
        path: '/products',
        builder: (context, state) => const ProductsPage(),
      ),

      GoRoute(
        path: '/product-details/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;

          return ProductDetailsPage(
            productId: id,
          );
        },
      ),
    ],
  );
}