import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvm_project/app/app.router.dart';
import 'package:mvvm_project/app/utils.dart';
import 'package:mvvm_project/ui/screens/login/login_view.dart';
import 'package:stacked/stacked.dart';

// import '../../../app/app.router.dart';
// import '../../../app/utils.dart';

class SplashViewModel extends BaseViewModel {
  Timer? _timer;
  // final _apiService = locator<ApiService>();
  // final _notificationService = locator<NotificationService>();

  void startTimer() async {
    // AppUser? user = await _userService.loadCredential();
    // bool hasUser = user?.hasUser ?? false;
    Future.delayed(Duration(seconds: 2), () {
      navigationService.navigateTo(Routes.loginView);
    });

    // _timer = Timer(const Duration(seconds: 3), () async {
    // if (hasUser) {
    //   //Navigate to login
    // } else {
    //   // Navigate to home
    // navigationService.navigateTo(Routes.splash2View);
    // }
    // });

    // _notificationService.registerPushNotificationHandler();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
