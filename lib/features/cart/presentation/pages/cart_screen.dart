import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection_container.dart';
import '../cubit/cart_cubit.dart';
import '../cubit/cart_state.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late final CartCubit cartCubit;

  @override
  void initState() {
    super.initState();

    cartCubit = InjectionContainer.createCartCubit();
    cartCubit.fetchCart();
  }

  @override
  void dispose() {
    cartCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cartCubit,

      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              context.go('/products');
            },
            icon: const Icon(Icons.arrow_back),
              ),
        ),

        body: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const SizedBox();
              },

              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },

              addedToCart: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },

              error: (message) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },

              success: (cart) {
                if (cart.cartItems.isEmpty) {
                  return const Center(
                    child: Text(
                      'Your cart is empty',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }

                double cartTotal = 0;

                for (final item in cart.cartItems) {
                  cartTotal += item.totalPrice;
                }

                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: cart.cartItems.length,
                        itemBuilder: (context, index) {
                          final item = cart.cartItems[index];

                          return Card(
                            margin: const EdgeInsets.only(
                              bottom: 12,
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(12),

                              child: Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,

                                children: [
                                  Image.network(
                                    item.productCoverUrl,
                                    width: 90,
                                    height: 90,
                                    fit: BoxFit.cover,

                                    errorBuilder: (
                                        context,
                                        error,
                                        stackTrace,
                                        ) {
                                      return Container(
                                        width: 90,
                                        height: 90,
                                        alignment: Alignment.center,
                                        child: const Icon(
                                          Icons.image_not_supported,
                                          size: 40,
                                        ),
                                      );
                                    },
                                  ),

                                  const SizedBox(width: 12),

                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,

                                      children: [
                                        Text(
                                          item.productName,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight:
                                            FontWeight.bold,
                                          ),
                                        ),

                                        const SizedBox(height: 8),

                                        Text(
                                          '${item.finalPricePerUnit} EGP',
                                          style: const TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),

                                        const SizedBox(height: 8),

                                        Text(
                                          'Quantity: ${item.quantity}',
                                          style: const TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),

                                        const SizedBox(height: 8),

                                        Text(
                                          'Total: ${item.totalPrice} EGP',
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight:
                                            FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),

                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                        children: [
                          const Text(
                            'Cart Total',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            '${cartTotal.toStringAsFixed(2)} EGP',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}