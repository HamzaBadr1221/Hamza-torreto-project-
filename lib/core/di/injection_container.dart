import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../network/dio_factory.dart';

// ================= AUTH =================

import '../../features/auth/data/datasources/auth_remote_data_source.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/login.dart';
import '../../features/auth/domain/usecases/register.dart';
import '../../features/auth/domain/usecases/resend_otp.dart';
import '../../features/auth/domain/usecases/verify_email.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';

// ================= PRODUCTS =================

import '../../features/products/data/datasources/product_remote_data_source.dart';
import '../../features/products/data/repositories/product_repository_impl.dart';
import '../../features/products/domain/repositories/product_repository.dart';
import '../../features/products/domain/usecases/get_product_details.dart';
import '../../features/products/domain/usecases/get_product.dart';
import '../../features/products/presentation/cubit/product_cubit.dart';

// ================= CATEGORIES =================

import '../../features/categories/data/datasources/category_remote_data_source.dart';
import '../../features/categories/data/repositories/category_repositoy_impl.dart';
import '../../features/categories/domain/repositories/category_repository.dart';
import '../../features/categories/domain/usecases/get_categories.dart';
import '../../features/categories/presentation/cubit/categories_cubit.dart';

// ================= CART =================

import '../../features/cart/data/datasources/cart_remote_data_source.dart';
import '../../features/cart/data/repositories/cart_repository_impl.dart';
import '../../features/cart/domain/repositories/cart_repository.dart';
import '../../features/cart/domain/usecases/add_to_cart.dart';
import '../../features/cart/domain/usecases/get_cart.dart';
import '../../features/cart/presentation/cubit/cart_cubit.dart';
import '../../features/cart/domain/usecases/delete_cart_item.dart';

// ================= ONBOARDING =================

import '../../features/onboarding/data/datasouces/onboarding_local_data_source.dart';
import '../../features/onboarding/data/repositories/onboarding_repository_impl.dart';
import '../../features/onboarding/domain/repositories/onboarding_repository.dart';
import '../../features/onboarding/domain/usecases/get_is_open.dart';
import '../../features/onboarding/domain/usecases/save_is_open.dart';
import '../../features/onboarding/domain/usecases/clear_is_open.dart';

class InjectionContainer {
  static late Dio dio;
  static late SharedPreferences sharedPreferences;

  // ================= AUTH =================

  static late AuthRemoteDataSource authRemoteDataSource;
  static late AuthRepository authRepository;
  static late Login login;
  static late Register register;
  static late VerifyEmail verifyEmail;
  static late ResendOtp resendOtp;

  // ================= PRODUCTS =================

  static late ProductRemoteDataSource productRemoteDataSource;
  static late ProductRepository productRepository;
  static late GetProducts getProducts;
  static late GetProductDetails getProductDetails;

  // ================= CATEGORIES =================

  static late CategoryRemoteDataSource categoryRemoteDataSource;
  static late CategoryRepository categoryRepository;
  static late GetCategories getCategories;

  // ================= CART =================

  static late CartRemoteDataSource cartRemoteDataSource;
  static late CartRepository cartRepository;
  static late GetCart getCart;
  static late AddToCart addToCart;
  static late DeleteCartItem deleteCartItem;

  // ================= ONBOARDING =================

  static late OnboardingLocalDataSource onboardingLocalDataSource;
  static late OnboardingRepository onboardingRepository;
  static late GetIsOpen getIsOpen;
  static late SaveIsOpen saveIsOpen;
  static late ClearIsOpen clearIsOpen;


  static Future<void> init() async {
    // ================= SHARED PREFERENCES =================

    sharedPreferences = await SharedPreferences.getInstance();

    // ================= DIO =================

    dio = DioFactory.create(sharedPreferences);

    // ================= AUTH =================

    authRemoteDataSource = AuthRemoteDataSource(dio);

    authRepository = AuthRepositoryImpl(
      authRemoteDataSource,
    );

    login = Login(authRepository);
    register = Register(authRepository);
    verifyEmail = VerifyEmail(authRepository);
    resendOtp = ResendOtp(authRepository);

    // ================= PRODUCTS =================

    productRemoteDataSource = ProductRemoteDataSource(dio);

    productRepository = ProductRepositoryImpl(
      productRemoteDataSource,
    );

    getProducts = GetProducts(productRepository);

    getProductDetails = GetProductDetails(
      productRepository,
    );

    // ================= CATEGORIES =================

    categoryRemoteDataSource = CategoryRemoteDataSource(dio);

    categoryRepository = CategoryRepositoryImpl(
      categoryRemoteDataSource,
    );

    getCategories = GetCategories(
      categoryRepository,
    );

    // ================= CART =================

    cartRemoteDataSource = CartRemoteDataSource(dio);

    cartRepository = CartRepositoryImpl(
      cartRemoteDataSource,
    );

    getCart = GetCart(cartRepository);

    addToCart = AddToCart(cartRepository);

    deleteCartItem = DeleteCartItem(cartRepository);

    // ================= ONBOARDING =================

    onboardingLocalDataSource = OnboardingLocalDataSource(
      sharedPreferences,
    );

    onboardingRepository = OnboardingRepositoryImpl(
      onboardingLocalDataSource,
    );

    getIsOpen = GetIsOpen(
      onboardingRepository,
    );

    saveIsOpen = SaveIsOpen(
      onboardingRepository,
    );
    clearIsOpen = ClearIsOpen(
      onboardingRepository,
    );
  }

  // ================= AUTH CUBIT =================

  static AuthCubit createAuthCubit() {
    return AuthCubit(
      login: login,
      register: register,
      verifyEmail: verifyEmail,
      resendOtp: resendOtp,
      sharedPreferences: sharedPreferences,
    );
  }

  // ================= PRODUCT CUBIT =================

  static ProductCubit createProductCubit() {
    return ProductCubit(
      getProducts: getProducts,
      getProductDetails: getProductDetails,
    );
  }

  // ================= CATEGORY CUBIT =================

  static CategoryCubit createCategoryCubit() {
    return CategoryCubit(
      getCategories,
    );
  }

  // ================= CART CUBIT =================

  static CartCubit createCartCubit() {
    return CartCubit(
      getCart: getCart,
      addToCart: addToCart,
      deleteCartItem: deleteCartItem,
    );
  }

  // ================= ONBOARDING =================

  static GetIsOpen createGetIsOpen() {
    return getIsOpen;
  }

  static SaveIsOpen createSaveIsOpen() {
    return saveIsOpen;
  }static ClearIsOpen createClearIsOpen(){
    return clearIsOpen;
  }

}