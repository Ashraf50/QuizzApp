import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/model/category_model.dart';

class SearchCubit extends Cubit<List<CategoryModel>> {
  SearchCubit() : super([]);

  void searchCategory(String query) {
    List<CategoryModel> filteredCategory = state
        .where((category) => (category.name.toLowerCase().contains(query)))
        .toList();
    emit(filteredCategory);
  }
}
