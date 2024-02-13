import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/model/category_model.dart';

part 'wishlist_state.dart';

class WIshlistCubit extends Cubit<WIshlistState> {
  WIshlistCubit() : super(SurahBookmarksInitial());
  static WIshlistCubit get(context) => BlocProvider.of(context);

  List selectedWIshlist = [];

  add(CategoryModel category) {
    selectedWIshlist.add(category);
    emit(UpdateSurahSelected());
  }

  bool isSelected(CategoryModel category) {
    final isSelected = selectedWIshlist.contains(category);
    return isSelected;
  }

  delete(CategoryModel category) {
    selectedWIshlist.remove(category);
    emit(UpdateSurahSelected());
  }
}
