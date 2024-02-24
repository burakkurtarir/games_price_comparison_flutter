part of 'home_cubit.dart';

final class HomeState extends Equatable {
  const HomeState({required this.currentTabIndex});

  final int currentTabIndex;

  @override
  List<Object> get props => [currentTabIndex];

  HomeState copyWith({
    int? currentTabIndex,
  }) {
    return HomeState(
      currentTabIndex: currentTabIndex ?? this.currentTabIndex,
    );
  }
}
