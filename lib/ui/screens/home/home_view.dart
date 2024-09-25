import 'package:flutter/material.dart';
import 'package:mvvm_project/ui/screens/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.uname});
  final String uname;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewmodel>.reactive(
      viewModelBuilder: () {
        return HomeViewmodel(uname: uname);
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Welcome $uname",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    viewModel.logout();
                  },
                  icon: Icon(
                    Icons.power_settings_new,
                  ))
            ],
          ),
        );
      },
    );
  }
}
