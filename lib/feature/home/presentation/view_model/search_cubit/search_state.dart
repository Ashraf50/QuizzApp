import 'package:quiz_app/core/model/category_model.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchSuccess extends SearchState {
  List<CategoryModel> category;
  SearchSuccess(this.category);
}

class SearchFailure extends SearchState {}
