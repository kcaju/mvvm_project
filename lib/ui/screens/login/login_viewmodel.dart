import 'package:flutter/material.dart';
import 'package:mvvm_project/app/app.router.dart';
import 'package:mvvm_project/app/utils.dart';
import 'package:stacked/stacked.dart';

class LoginViewmodel extends BaseViewModel {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController uname = TextEditingController();
  TextEditingController pwd = TextEditingController();
  void login() {
    if (formkey.currentState!.validate()) {
      navigationService.navigateTo(Routes.homeView,
          arguments: HomeViewArguments(uname: uname.text));
    }
  }
}
