import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainShell extends StatelessWidget {
  final Widget child;

  const MainShell({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    // نخفي الـ Bottom Navigation في Product Details
    final isProductDetails = location.startsWith('/product-details/');

    return Scaffold(
      body: child,

      bottomNavigationBar: isProductDetails
          ? null
          : NavigationBar(
        selectedIndex: _getSelectedIndex(context),
        onDestinationSelected: (index) {
          switch (index) {
            case 0:
              context.go('/products');
              break;

            case 1:
              context.go('/cart');
              break;

            case 2:
              context.go('/settings');
              break;
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined),
            selectedIcon: Icon(Icons.shopping_bag),
            label: 'Products',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            selectedIcon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  int _getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    if (location.startsWith('/cart')) {
      return 1;
    }

    if (location.startsWith('/settings')) {
      return 2;
    }

    return 0;
  }
}