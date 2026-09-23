import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../cart/presentation/cubit/cart_cubit.dart';
import '../../../cart/presentation/cubit/cart_state.dart';

import '../cubit/product_cubit.dart';
import '../cubit/product_state.dart';

class ProductDetailsPage extends StatefulWidget {
  final String productId;

  const ProductDetailsPage({
    super.key,
    required this.productId,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  void initState() {
    super.initState();

    context.read<ProductCubit>().fetchProductDetails(widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        leading: IconButton(
          onPressed: () {
            context.push('/products');
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),

      body: BlocListener<CartCubit, CartState>(
        listener: (context, cartState) {
          cartState.whenOrNull(
            addedToCart: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Product added to cart successfully'),
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

        child: BlocBuilder<ProductCubit, ProductState>(
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

              productsSuccess: (_) {
                return const SizedBox();
              },

              productDetailsSuccess: (product) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    children: [
                      Image.network(
                        product.coverPictureUrl,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,

                        errorBuilder: (
                            context,
                            error,
                            stackTrace,
                            ) {
                          return const SizedBox(
                            height: 250,
                            child: Center(
                              child: Icon(
                                Icons.image_not_supported,
                                size: 60,
                              ),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 20),

                      Text(
                        product.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        product.description,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        product.arabicName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        product.arabicDescription,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        '${product.price} EGP',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 20),

                      Text(
                        'Rating: ${product.rating}',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow.shade700,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow.shade700,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow.shade700,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow.shade700,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow.shade700,
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Text(
                        'Color: ${product.color}',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),

                      Icon(
                        Icons.square,
                        color: Colors.red.shade600,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        'Stock: ${product.stock}',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),

                      // =========================
                      // ADD TO CART
                      // =========================

                      const SizedBox(height: 25),

                      BlocBuilder<CartCubit, CartState>(
                        builder: (context, cartState) {
                          final isLoading = cartState.maybeWhen(
                            loading: () => true,
                            orElse: () => false,
                          );

                          return SizedBox(
                            width: double.infinity,

                            child: ElevatedButton(
                              onPressed: isLoading
                                  ? null
                                  : () {
                                context
                                    .read<CartCubit>()
                                    .addProductToCart(
                                  productId: product.id,
                                );
                              },

                              child: isLoading
                                  ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                                  : const Text(
                                'Add to Cart',
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
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
            );
          },
        ),
      ),
    );
  }
}