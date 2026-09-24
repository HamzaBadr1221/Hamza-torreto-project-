import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection_container.dart';
import '../cubit/cart_cubit.dart';
import '../cubit/cart_state.dart';

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
          title: const Text(
            'My Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
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

              deletedFromCart: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },

              error: (message) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 60,
                          color: Colors.red.shade400,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          message,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },

              success: (cart) {
                if (cart.cartItems.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 55,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Your cart is empty',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Add some products to your cart',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
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
                        padding: const EdgeInsets.fromLTRB(
                          16,
                          16,
                          16,
                          10,
                        ),
                        itemCount: cart.cartItems.length,
                        itemBuilder: (context, index) {
                          final item =
                          cart.cartItems[index];

                          return Container(
                            margin: const EdgeInsets.only(
                              bottom: 14,
                            ),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color:
                              Theme.of(context).cardColor,
                              borderRadius:
                              BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.07),
                                  blurRadius: 12,
                                  offset:
                                  const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                // IMAGE
                                ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(16),
                                  child: Container(
                                    width: 100,
                                    height: 110,
                                    color:
                                    Colors.grey.shade100,
                                    child: Image.network(
                                      item.productCoverUrl,
                                      fit: BoxFit.cover,
                                      errorBuilder: (
                                          context,
                                          error,
                                          stackTrace,
                                          ) {
                                        return Icon(
                                          Icons
                                              .image_not_supported,
                                          size: 40,
                                          color: Colors
                                              .grey.shade500,
                                        );
                                      },
                                    ),
                                  ),
                                ),

                                const SizedBox(width: 14),

                                // INFO
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              item.productName,
                                              maxLines: 2,
                                              overflow:
                                              TextOverflow
                                                  .ellipsis,
                                              style:
                                              const TextStyle(
                                                fontSize: 17,
                                                fontWeight:
                                                FontWeight
                                                    .bold,
                                              ),
                                            ),
                                          ),

                                          // DELETE BUTTON
                                          IconButton(
                                            onPressed: () {
                                              context
                                                  .read<
                                                  CartCubit>()
                                                  .deleteProductFromCart(
                                                itemId:
                                                item.itemId,
                                              );
                                            },
                                            icon: const Icon(
                                              Icons
                                                  .delete_outline,
                                            ),
                                            color: Colors.red,
                                            tooltip: 'Delete',
                                          ),
                                        ],
                                      ),

                                      const SizedBox(height: 5),

                                      Text(
                                        '${item.finalPricePerUnit} EGP',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight:
                                          FontWeight.bold,
                                          color: Theme.of(
                                            context,
                                          )
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),

                                      const SizedBox(height: 10),

                                      Container(
                                        padding:
                                        const EdgeInsets
                                            .symmetric(
                                          horizontal: 10,
                                          vertical: 6,
                                        ),
                                        decoration:
                                        BoxDecoration(
                                          color: Colors.grey
                                              .withOpacity(0.1),
                                          borderRadius:
                                          BorderRadius
                                              .circular(10),
                                        ),
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons
                                                  .shopping_bag_outlined,
                                              size: 18,
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Qty: ${item.quantity}',
                                              style:
                                              const TextStyle(
                                                fontWeight:
                                                FontWeight
                                                    .w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(height: 10),

                                      Text(
                                        'Total: ${item.totalPrice} EGP',
                                        style:
                                        const TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    // BOTTOM SUMMARY
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(
                        20,
                        18,
                        20,
                        20,
                      ),
                      decoration: BoxDecoration(
                        color:
                        Theme.of(context).cardColor,
                        borderRadius:
                        const BorderRadius.vertical(
                          top: Radius.circular(28),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.10),
                            blurRadius: 15,
                            offset:
                            const Offset(0, -5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            children: [
                              Text(
                                'Cart Total',
                                style: TextStyle(
                                  fontSize: 18,
                                  color:
                                  Colors.grey.shade600,
                                ),
                              ),
                              Text(
                                '${cartTotal.toStringAsFixed(2)} EGP',
                                style: const TextStyle(
                                  fontSize: 23,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          // CHECKOUT UI ONLY
                          SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons
                                    .shopping_cart_checkout,
                              ),
                              label: const Text(
                                'Checkout',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                              style:
                              ElevatedButton.styleFrom(
                                backgroundColor:
                                Colors.black,
                                foregroundColor:
                                Colors.white,
                                shape:
                                RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                    18,
                                  ),
                                ),
                              ),
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