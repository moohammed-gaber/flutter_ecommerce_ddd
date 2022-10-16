import 'package:get/get.dart';
import 'package:untitled/app/features/home/application/controllers/home_event.dart';
import 'package:untitled/app/features/home/application/controllers/home_state.dart';
import 'package:untitled/app/features/home/application/controllers/home_view_contract.dart';

class HomeController extends GetxController implements HomeEvent {
  HomeState state;
  late final HomeViewContract view;

  HomeController(this.state);

  void updateSelectedBottomNavBarIndex(int index) {
    state = state.copyWith(selectedBottomNavIndex: index);
    update();
  }

  @override
  void bottomNavigationItemPressed(int index) {
    updateSelectedBottomNavBarIndex(index);
    view.navigate(index);
  }
}
