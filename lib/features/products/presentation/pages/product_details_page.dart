import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/product_cubit.dart';
import '../cubit/product_state.dart';
import '../../../cart/presentation/cubit/cart_cubit.dart';
import '../../../cart/presentation/cubit/cart_state.dart';

class ProductDetailsPage extends StatefulWidget {
  final String productId;

  const ProductDetailsPage({
    super.key,
    required this.productId,
  });

  @override
  State<ProductDetailsPage> createState() =>
      _ProductDetailsPageState();
}

class _ProductDetailsPageState
    extends State<ProductDetailsPage> {
  @override
  void initState() {
    super.initState();

    context
        .read<ProductCubit>()
        .fetchProductDetails(widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocListener<CartCubit, CartState>(
        listener: (context, state) {
          state.whenOrNull(
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
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
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
                return _ProductDetailsBody(
                  product: product,
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


class _ProductDetailsBody extends StatelessWidget {
  final dynamic product;

  const _ProductDetailsBody({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark =
        Theme.of(context).brightness == Brightness.dark;


    final Color cardColor =
    isDark ? const Color(0xFF242424) : Colors.white;

    final Color cardBorder =
    isDark
        ? const Color(0xFF3A3A3A)
        : const Color(0xFFE5E5E5);

    final Color primaryText =
    isDark ? Colors.white : Colors.black;

    final Color secondaryText =
    isDark
        ? const Color(0xFFCCCCCC)
        : const Color(0xFF666666);

    final Color iconBackground =
    isDark
        ? const Color(0xFF333333)
        : const Color(0xFFF2F2F2);

    final Color iconColor =
    isDark ? Colors.white : Colors.black;

    return ListView(
      padding: const EdgeInsets.fromLTRB(
        16,
        16,
        16,
        30,
      ),
      children: [

        Container(
          height: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: cardColor,
            border: Border.all(
              color: cardBorder,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Image.network(
              product.coverPictureUrl,
              fit: BoxFit.cover,
              errorBuilder: (
                  context,
                  error,
                  stackTrace,
                  ) {
                return Container(
                  color: isDark
                      ? const Color(0xFF303030)
                      : const Color(0xFFF0F0F0),
                  child: Icon(
                    Icons.image_not_supported_outlined,
                    size: 60,
                    color: secondaryText,
                  ),
                );
              },
            ),
          ),
        ),

        const SizedBox(height: 20),


        Text(
          product.name,
          style: TextStyle(
            color: primaryText,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 6),


        if (product.arabicName != null &&
            product.arabicName
                .toString()
                .isNotEmpty)
          Text(
            product.arabicName.toString(),
            style: TextStyle(
              color: secondaryText,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),

        const SizedBox(height: 16),

        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            color: isDark
                ? Colors.white
                : Colors.black,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            '${product.price} EGP',
            style: TextStyle(
              color: isDark
                  ? Colors.black
                  : Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 18),


        Row(
          children: [
            Expanded(
              child: _InfoCard(
                title: 'Stock',
                value:
                '${product.stock}',
                icon: Icons.inventory_2_outlined,
                cardColor: cardColor,
                borderColor: cardBorder,
                titleColor: secondaryText,
                valueColor: primaryText,
                iconBackground: iconBackground,
                iconColor: iconColor,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: _InfoCard(
                title: 'Color',
                value:
                product.color?.toString() ?? 'N/A',
                icon: Icons.palette_outlined,
                cardColor: cardColor,
                borderColor: cardBorder,
                titleColor: secondaryText,
                valueColor: primaryText,
                iconBackground: iconBackground,
                iconColor: iconColor,
              ),
            ),
          ],
        ),

        const SizedBox(height: 18),


        _InfoCard(
          title: 'Weight',
          value:
          '${product.weight} g',
          icon: Icons.scale_outlined,
          cardColor: cardColor,
          borderColor: cardBorder,
          titleColor: secondaryText,
          valueColor: primaryText,
          iconBackground: iconBackground,
          iconColor: iconColor,
        ),

        const SizedBox(height: 18),


        _DescriptionCard(
          title: 'Description',
          description:
          product.description?.toString() ??
              'No description available',
          cardColor: cardColor,
          borderColor: cardBorder,
          titleColor: primaryText,
          descriptionColor: secondaryText,
          iconBackground: iconBackground,
          iconColor: iconColor,
        ),


        if (product.arabicDescription != null &&
            product.arabicDescription
                .toString()
                .isNotEmpty) ...[
          const SizedBox(height: 14),

          _DescriptionCard(
            title: 'Arabic Description',
            description:
            product.arabicDescription.toString(),
            cardColor: cardColor,
            borderColor: cardBorder,
            titleColor: primaryText,
            descriptionColor: secondaryText,
            iconBackground: iconBackground,
            iconColor: iconColor,
          ),
        ],

        const SizedBox(height: 24),


        SizedBox(
          height: 56,
          child: ElevatedButton.icon(
            onPressed: () {
              context
                  .read<CartCubit>()
                  .addProductToCart(
                productId: product.id,
              );
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
            label: const Text(
              'Add to Cart',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: isDark
                  ? Colors.white
                  : Colors.black,
              foregroundColor: isDark
                  ? Colors.black
                  : Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class _InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  final Color cardColor;
  final Color borderColor;
  final Color titleColor;
  final Color valueColor;
  final Color iconBackground;
  final Color iconColor;

  const _InfoCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.cardColor,
    required this.borderColor,
    required this.titleColor,
    required this.valueColor,
    required this.iconBackground,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: borderColor,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          // ICON
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBackground,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 21,
            ),
          ),

          const SizedBox(height: 12),

          // TITLE
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 4),

          // VALUE
          Text(
            value,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: valueColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


class _DescriptionCard extends StatelessWidget {
  final String title;
  final String description;

  final Color cardColor;
  final Color borderColor;
  final Color titleColor;
  final Color descriptionColor;
  final Color iconBackground;
  final Color iconColor;

  const _DescriptionCard({
    required this.title,
    required this.description,
    required this.cardColor,
    required this.borderColor,
    required this.titleColor,
    required this.descriptionColor,
    required this.iconBackground,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: borderColor,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: iconBackground,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.description_outlined,
                  color: iconColor,
                  size: 21,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            description,
            style: TextStyle(
              color: descriptionColor,
              fontSize: 15,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}