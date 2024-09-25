import 'package:mvvm_project/app/app.router.dart';
import 'package:mvvm_project/app/utils.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  final String uname;
  HomeViewmodel({required this.uname});
  void logout() {
    navigationService.pushNamedAndRemoveUntil(Routes.loginView);
  }
}
