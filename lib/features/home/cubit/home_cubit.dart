import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState(currentTabIndex: 1));

  void changeCurrentTab(int index) {
    emit(state.copyWith(currentTabIndex: index));
  }
}
