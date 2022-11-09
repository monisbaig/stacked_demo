import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_demo/views/login/login_view_model.dart';

class LoginView extends ViewModelBuilderWidget<LoginViewModel> {
  @override
  Widget builder(
      BuildContext context, LoginViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        child: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  controller: viewModel.emailFieldController,
                  validator: viewModel.validateEmail,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                ),
                TextFormField(
                  controller: viewModel.passwordFieldController,
                  validator: viewModel.validatePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                  ),
                ),
                ElevatedButton(
                  onPressed: () => viewModel.onLoginTap(context),
                  child: const Text('Login'),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();
}
