import 'package:eshop_project/core/cubit/theme/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubic extends Cubit<ThemeState> {
  ThemeCubic() : super(ThemeState(isDark: false));

  void toggleTheme() {
    emit(ThemeState(isDark: !state.isDark));
  }
}
