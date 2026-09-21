import 'package:eshop_project/core/cubit/theme/theme_cubic.dart';
import 'package:eshop_project/core/cubit/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection_container.dart';
import 'core/router/app_router.dart';
import 'core/utils/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await InjectionContainer.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => InjectionContainer.createAuthCubit()),
        BlocProvider(create: (_) => InjectionContainer.createProductCubit()),
        BlocProvider(create: (context) => ThemeCubic()),
      ],
      child: BlocBuilder<ThemeCubic, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: state.isDark
                ? AppTheme().darkTheme()
                : AppTheme().lightTheme(),
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  }
}
