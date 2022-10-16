class HomeState {
  final int selectedBottomNavIndex;

  HomeState({required this.selectedBottomNavIndex});

  // initial
  factory HomeState.initial() => HomeState(selectedBottomNavIndex: 0);
  // copy with
  HomeState copyWith({int? selectedBottomNavIndex}) {
    return HomeState(selectedBottomNavIndex: selectedBottomNavIndex ?? this.selectedBottomNavIndex);
  }
}
