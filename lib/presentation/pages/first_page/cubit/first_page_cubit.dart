import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'first_page_state.dart';

class FirstPageCubit extends Cubit<FirstPageState> {
  int number;
  FirstPageCubit(this.number) : super(const FirstPageInitial(0));

  void changeNumber(bool _isAdd) {
    if (_isAdd) {
      number++;
      emit(FirstPositive(number));
    } else {
      number--;
      emit(FirstNegative(number));
    }
  }
}
