import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit/product_cubit.dart';
import '../cubit/product_state.dart';

import '../../../categories/presentation/cubit/categories_cubit.dart';
import '../../../categories/presentation/cubit/category_state.dart';

import '../../../cart/presentation/cubit/cart_cubit.dart';
import '../../../cart/presentation/cubit/cart_state.dart';

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

    const String token = '';

    context.read<CategoryCubit>().fetchCategories(token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: BlocListener<CartCubit, CartState>(
        listener: (context, cartState) {
          cartState.whenOrNull(
            addedToCart: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Product added to cart successfully',
                  ),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          );
        },
        child: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, categoryState) {
            return BlocBuilder<ProductCubit, ProductState>(
              builder: (context, productState) {
                return ListView(
                  padding: const EdgeInsets.only(bottom: 20),
                  children: [

                    categoryState.when(
                      initial: () => const SizedBox(),

                      loading: () {
                        return const SizedBox(
                          height: 150,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },

                      success: (categories) {
                        if (categories.categories.isEmpty) {
                          return const SizedBox();
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(
                                16,
                                14,
                                16,
                                10,
                              ),
                              child: Text(
                                'Categories',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 125,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                itemCount:
                                categories.categories.length,
                                itemBuilder: (context, index) {
                                  final category =
                                  categories.categories[index];

                                  return Container(
                                    width: 100,
                                    margin: const EdgeInsets.only(
                                      right: 12,
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 82,
                                          height: 82,
                                          padding:
                                          const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(22),
                                            border: Border.all(
                                              color: Colors.grey.shade400,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(19),
                                            child: Image.network(
                                              category.coverPictureUrl,
                                              fit: BoxFit.cover,
                                              errorBuilder:
                                                  (
                                                  context,
                                                  error,
                                                  stackTrace,
                                                  ) {
                                                return Container(
                                                  color: Colors.grey.shade200,
                                                  child: const Icon(
                                                    Icons
                                                        .image_not_supported_outlined,
                                                    size: 30,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),

                                        const SizedBox(height: 8),

                                        Text(
                                          category.name,
                                          maxLines: 1,
                                          overflow:
                                          TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },

                      error: (message) => const SizedBox(),
                    ),

                    const SizedBox(height: 8),


                    productState.when(
                      initial: () => const SizedBox(),

                      loading: () {
                        return const SizedBox(
                          height: 400,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },

                      productsSuccess: (products) {
                        if (products.items.isEmpty) {
                          return const Padding(
                            padding: EdgeInsets.all(30),
                            child: Center(
                              child: Text(
                                'No products found',
                              ),
                            ),
                          );
                        }

                        return Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(
                                16,
                                8,
                                16,
                                12,
                              ),
                              child: Text(
                                'All Products',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            GridView.builder(
                              shrinkWrap: true,
                              physics:
                              const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 0.72,
                              ),
                              itemCount: products.items.length,
                              itemBuilder: (context, index) {
                                final product =
                                products.items[index];

                                return _ProductCard(
                                  imageUrl:
                                  product.coverPictureUrl,
                                  name: product.name,
                                  price:
                                  '${product.price} EGP',
                                  onTap: () {
                                    context.push(
                                      '/product-details/${product.id}',
                                    );
                                  },
                                  onAddToCart: () {
                                    context
                                        .read<CartCubit>()
                                        .addProductToCart(
                                      productId: product.id,
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        );
                      },

                      productDetailsSuccess: (_) =>
                      const SizedBox(),

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


class _ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final VoidCallback onTap;
  final VoidCallback onAddToCart;

  const _ProductCard({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.onTap,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {

    final bool isDark =
        Theme.of(context).brightness == Brightness.dark;

    final Color buttonBackground =
    isDark ? Colors.white : Colors.black;

    final Color buttonIcon =
    isDark ? Colors.black : Colors.white;

    return Material(
      borderRadius: BorderRadius.circular(24),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          fit: StackFit.expand,
          children: [

            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (
                  context,
                  error,
                  stackTrace,
                  ) {
                return Container(
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Icon(
                      Icons.image_not_supported_outlined,
                      size: 50,
                      color: Colors.black54,
                    ),
                  ),
                );
              },
            ),


            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [
                      0.40,
                      1.0,
                    ],
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.88),
                    ],
                  ),
                ),
              ),
            ),


            Positioned(
              top: 10,
              right: 10,
              child: Material(
                color: buttonBackground,
                elevation: 6,
                shadowColor: Colors.black.withOpacity(0.5),
                shape: const CircleBorder(),
                child: InkWell(
                  onTap: onTap,
                  customBorder: const CircleBorder(),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Icon(
                      Icons.arrow_outward,
                      size: 20,
                      color: buttonIcon,
                    ),
                  ),
                ),
              ),
            ),


            Positioned(
              left: 12,
              right: 12,
              bottom: 12,
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  // PRODUCT NAME
                  Text(
                    name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [

                      Material(
                        color: buttonBackground,
                        elevation: 5,
                        shadowColor:
                        Colors.black.withOpacity(0.5),
                        borderRadius:
                        BorderRadius.circular(12),
                        child: Container(
                          padding:
                          const EdgeInsets.symmetric(
                            horizontal: 11,
                            vertical: 7,
                          ),
                          decoration: BoxDecoration(
                            color: buttonBackground,
                            borderRadius:
                            BorderRadius.circular(12),
                          ),
                          child: Text(
                            price,
                            style: TextStyle(
                              color: buttonIcon,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),


                      Material(
                        color: buttonBackground,
                        elevation: 6,
                        shadowColor:
                        Colors.black.withOpacity(0.5),
                        shape: const CircleBorder(),
                        child: InkWell(
                          onTap: onAddToCart,
                          customBorder:
                          const CircleBorder(),
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Icon(
                              Icons.add,
                              color: buttonIcon,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}