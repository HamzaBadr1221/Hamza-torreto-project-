import 'package:dio/dio.dart';
import '../network/dio_factory.dart';

import '../../features/auth/data/datasources/auth_remote_data_source.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/login.dart';
import '../../features/auth/domain/usecases/register.dart';
import '../../features/auth/domain/usecases/resend_otp.dart';
import '../../features/auth/domain/usecases/verify_email.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';

import '../../features/products/data/datasources/product_remote_data_source.dart';
import '../../features/products/data/repositories/product_repository_impl.dart';
import '../../features/products/domain/repositories/product_repository.dart';
import '../../features/products/domain/usecases/get_product_details.dart';
import '../../features/products/domain/usecases/get_product.dart';
import '../../features/products/presentation/cubit/product_cubit.dart';

import '../../features/categories/data/datasources/category_remote_data_source.dart';
import '../../features/categories/data/repositories/category_repositoy_impl.dart';
import '../../features/categories/domain/repositories/category_repository.dart';
import '../../features/categories/domain/usecases/get_categories.dart';
import '../../features/categories/presentation/cubit/categories_cubit.dart';
class InjectionContainer {
  static late Dio dio;

  static late AuthRemoteDataSource authRemoteDataSource;
  static late AuthRepository authRepository;

  static late Login login;
  static late Register register;
  static late VerifyEmail verifyEmail;
  static late ResendOtp resendOtp;

  static late ProductRemoteDataSource productRemoteDataSource;
  static late ProductRepository productRepository;

  static late GetProducts getProducts;
  static late GetProductDetails getProductDetails;

  static late CategoryRemoteDataSource categoryRemoteDataSource;
  static late CategoryRepository categoryRepository;
  static late GetCategories getCategories;


  static Future<void> init() async {

    dio = DioFactory.create();


    authRemoteDataSource = AuthRemoteDataSource(dio);

    authRepository = AuthRepositoryImpl(
      authRemoteDataSource,
    );

    login = Login(authRepository);
    register = Register(authRepository);
    verifyEmail = VerifyEmail(authRepository);
    resendOtp = ResendOtp(authRepository);


    productRemoteDataSource = ProductRemoteDataSource(dio);

    productRepository = ProductRepositoryImpl(
      productRemoteDataSource,
    );

    getProducts = GetProducts(productRepository);
    getProductDetails = GetProductDetails(productRepository);

    categoryRemoteDataSource = CategoryRemoteDataSource(dio);
    categoryRepository = CategoryRepositoryImpl(
      categoryRemoteDataSource,
    );
    getCategories = GetCategories(categoryRepository);
  }

  static AuthCubit createAuthCubit() {
    return AuthCubit(
      login: login,
      register: register,
      verifyEmail: verifyEmail,
      resendOtp: resendOtp,
    );
  }

  static ProductCubit createProductCubit() {
    return ProductCubit(
      getProducts: getProducts,
      getProductDetails: getProductDetails,
    );
  }

  static CategoryCubit createCategoryCubit(){
    return CategoryCubit(
       getCategories,
    );
  }
}