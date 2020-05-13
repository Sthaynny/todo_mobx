import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool obscure = true;

  @observable
  bool loading = false;

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassWord(String value) => password = value;

  @action
  void setObscure() => obscure = !obscure;

  @computed
  Function get isFormValid =>
      (isEmailValid && isPasswordValid && !loading) ? login : null;

  @computed
  bool get isEmailValid => RegExp(
          r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$")
      .hasMatch(email);

  @computed
  bool get isPasswordValid => password.length > 6;

  @action
  Future<void> login() async {
    loading = true;

    await Future.delayed(Duration(seconds: 5));

    loading = false;

    Modular.to.pushReplacementNamed('/list');
  }
}
