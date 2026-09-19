class ApiConstants {
  static const String baseUrl =
      'https://accessories-eshop.runasp.net';

  static const String login = '/api/auth/login';
  static const String register = '/api/auth/register';
  static const String verifyEmail = '/api/auth/verify-email';
  static const String resendOtp = '/api/auth/resend-otp';

  static const String products = '/api/products';

  static String productDetails(String id) {
    return '/api/products/$id';
  }
}