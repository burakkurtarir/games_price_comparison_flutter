import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'deals_state.dart';

class DealsCubit extends Cubit<DealsState> {
  DealsCubit() : super(const DealsState()) {
    print("init deals cubit");
  }

  void fetchDeals() {}
}
