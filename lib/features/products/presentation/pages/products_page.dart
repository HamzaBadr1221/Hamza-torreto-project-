import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit/product_cubit.dart';
import '../cubit/product_state.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    super.initState();

    context.read<ProductCubit>().fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products'), centerTitle: true),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const SizedBox();
            },

            loading: () {
              return const Center(child: CircularProgressIndicator());
            },

            productsSuccess: (products) {
              if (products.items.isEmpty) {
                return const Center(child: Text('No products found'));
              }

              return ListView.builder(
                itemCount: products.items.length,
                itemBuilder: (context, index) {
                  final product = products.items[index];

                  return Column(
                    children: [
                       SizedBox(height: 16),
                      ListTile(
                        leading: Image.network(
                          product.coverPictureUrl,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.image_not_supported);
                          },
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        tileColor: Colors.grey.shade500,
                        title: Text(product.name),
                        subtitle: Text('${product.price} EGP'),
                        textColor: Colors.black,

                        onTap: () {
                          context.push('/product-details/${product.id}');
                        },
                      ),
                    ],
                  );
                },
              );
            },

            productDetailsSuccess: (_) {
              return const SizedBox();
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
