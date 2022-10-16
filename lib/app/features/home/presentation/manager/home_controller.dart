import 'package:get/get.dart';
import 'package:untitled/app/features/home/presentation/manager/home_event.dart';
import 'package:untitled/app/features/home/presentation/manager/home_state.dart';
import 'package:untitled/app/features/home/presentation/manager/home_view_contract.dart';

class HomeController extends GetxController implements HomeEvent {
  HomeState state;
  late final HomeViewContract view;

  HomeController(this.state);

  @override
  void bottomNavigationItemPressed(int index) {
    state = state.copyWith(selectedBottomNavIndex: index);
    update();
    view.navigate(index);
  }
}
