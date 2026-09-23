import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit/product_cubit.dart';
import '../cubit/product_state.dart';
import '../../../categories/presentation/cubit/categories_cubit.dart';
import '../../../categories/presentation/cubit/category_state.dart';

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

    const String token =
        '';

    context.read<CategoryCubit>().fetchCategories(token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
        automaticallyImplyLeading: false,

        leading: IconButton(
          onPressed: () {
            context.go('/cart');
          },
          icon: const Icon(Icons.shopping_cart),
        ),

        actions: [
          IconButton(
            onPressed: () {
              context.go("/settings");
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),

      body: Column(
        children: [
          BlocBuilder<CategoryCubit, CategoryState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  return const SizedBox();
                },

                loading: () {
                  return const SizedBox(
                    height: 60,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },

                success: (categories) {
                  if (categories.categories.isEmpty) {
                    return const SizedBox();
                  }

                  return SizedBox(
                    height: 125,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      itemCount: categories.categories.length,
                      itemBuilder: (context, index) {
                        final category =
                        categories.categories[index];

                        return Container(
                          width: 100,
                          margin: const EdgeInsets.only(right: 12),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius:
                                BorderRadius.circular(50),
                                child: Image.network(
                                  category.coverPictureUrl,
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                  errorBuilder:
                                      (context, error, stackTrace) {
                                    return Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.image_not_supported,
                                      ),
                                    );
                                  },
                                ),
                              ),

                              const SizedBox(height: 8),

                              Text(
                                category.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },

                error: (message) {
                  return const SizedBox();
                },
              );
            },
          ),

          Expanded(
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

                  productsSuccess: (products) {
                    if (products.items.isEmpty) {
                      return const Center(
                        child: Text('No products found'),
                      );
                    }

                    return ListView.builder(
                      itemCount: products.items.length,
                      itemBuilder: (context, index) {
                        final product = products.items[index];

                        return Column(
                          children: [
                            const SizedBox(height: 16),

                            ListTile(
                              leading: Image.network(
                                product.coverPictureUrl,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                                errorBuilder:
                                    (context, error, stackTrace) {
                                  return const Icon(
                                    Icons.image_not_supported,
                                  );
                                },
                              ),

                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(32),
                              ),

                              tileColor: Colors.grey.shade500,

                              title: Text(product.name),

                              subtitle: Text(
                                '${product.price} EGP',
                              ),

                              textColor: Colors.black,

                              onTap: () {
                                context.push(
                                  '/product-details/${product.id}',
                                );
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
        ],
      ),
    );
  }
}