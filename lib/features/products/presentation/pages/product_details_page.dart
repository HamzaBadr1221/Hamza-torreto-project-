import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/product_cubit.dart';
import '../cubit/product_state.dart';

class ProductDetailsPage extends StatefulWidget {
  final String productId;

  const ProductDetailsPage({super.key, required this.productId});

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
      appBar: AppBar(title: const Text('Product Details')),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const SizedBox();
            },

            loading: () {
              return const Center(child: CircularProgressIndicator());
            },

            productsSuccess: (_) {
              return const SizedBox();
            },

            productDetailsSuccess: (product) {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      product.coverPictureUrl,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const SizedBox(
                          height: 250,
                          child: Center(
                            child: Icon(Icons.image_not_supported, size: 60),
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
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      product.arabicName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16),
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
                      style: const TextStyle(fontSize: 24),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rate, color: Colors.yellow.shade700),
                        Icon(Icons.star_rate, color: Colors.yellow.shade700),
                        Icon(Icons.star_rate, color: Colors.yellow.shade700),
                        Icon(Icons.star_rate, color: Colors.yellow.shade700),
                        Icon(Icons.star_rate, color: Colors.yellow.shade700),
                      ],
                    ),

                    const SizedBox(height: 10),
                    Text(
                      'Color: ${product.color}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Icon(Icons.square, color: Colors.red.shade600),

                    const SizedBox(height: 10),
                    Text(
                      'Stock: ${product.stock}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              );
            },

            error: (message) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(message, textAlign: TextAlign.center),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
