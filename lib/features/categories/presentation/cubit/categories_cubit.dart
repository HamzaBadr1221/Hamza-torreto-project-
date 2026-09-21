import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_categories.dart';
import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final GetCategories getCategories;

  CategoryCubit(this.getCategories)
      : super(const CategoryState.initial());

  Future<void> fetchCategories(String token) async {
    emit(const CategoryState.loading());

    try {
      final categories = await getCategories(token);

      emit(CategoryState.success(categories));
    } catch (e) {
      emit(CategoryState.error(e.toString()));
    }
  }
}