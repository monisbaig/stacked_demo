import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_demo/views/login/login_view_model.dart';

void main() async {
  test('Login Email Validation Test', () {
    var loginViewModel = LoginViewModel();
    expect(loginViewModel.validateEmail(null), 'Please enter an email');
    expect(loginViewModel.validateEmail(''), 'Please enter an email');
    expect(loginViewModel.validateEmail('helloworld'),
        'Please enter a valid email');
    expect(loginViewModel.validateEmail('helloworld@gmail.com'), null);
  });
  test('Login Password Validation Test', () {
    var loginViewModel = LoginViewModel();
    expect(loginViewModel.validatePassword(null), 'Please enter your password');
    expect(loginViewModel.validatePassword(''), 'Please enter your password');
    expect(loginViewModel.validatePassword('12345'),
        'Password must contain at least 6 characters');
    expect(loginViewModel.validatePassword('123456'), null);
  });
}
