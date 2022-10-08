part of 'first_page_cubit.dart';

@immutable
abstract class FirstPageState {
  final int number;

  const FirstPageState(this.number);
}

class FirstPageInitial extends FirstPageState {
  const FirstPageInitial(int number) : super(number);
}

class FirstPositive extends FirstPageState {
  const FirstPositive(int number) : super(number);
}

class FirstNegative extends FirstPageState {
  const FirstNegative(int number) : super(number);
}
