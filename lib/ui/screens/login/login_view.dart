import 'package:flutter/material.dart';
import 'package:mvvm_project/ui/screens/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

// import '../../../constants/assets.gen.dart';
// import '../../tools/screen_size.dart';
// import 'splash_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewmodel>.reactive(
      // onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Login Screen",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                key: model.formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: model.uname,
                      validator: (value) {
                        if (value!.length == 0) {
                          return "must fill";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "UserName",
                          hintStyle: TextStyle(color: Colors.black),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: model.pwd,
                      validator: (value) {
                        if (value!.length == 0) {
                          return "must fill";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password ?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        model.login();
                      },
                      child: Text(
                        "Login ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create an account ?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "SignUp",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ));
      },
      viewModelBuilder: () => LoginViewmodel(),
    );
  }
}
