import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todomobx/common/custom_icon_button.dart';
import 'package:todomobx/common/custom_text_field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final _loginController = Modular.get<LoginController>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(32),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Observer(builder: (_) {
                    return CustomTextField(
                      hint: 'E-mail',
                      prefix: Icon(Icons.account_circle),
                      textInputType: TextInputType.emailAddress,
                      onChanged: _loginController.setEmail,
                      enabled: !_loginController.loading,
                    );
                  }),
                  const SizedBox(
                    height: 16,
                  ),
                  Observer(
                    builder: (_) {
                      return CustomTextField(
                        hint: 'Senha',
                        prefix: Icon(Icons.lock),
                        obscure: _loginController.obscure,
                        onChanged: _loginController.setPassWord,
                        enabled: !_loginController.loading,
                        suffix: CustomIconButton(
                          radius: 32,
                          iconData: !_loginController.obscure
                              ? Icons.visibility_off
                              : Icons.visibility,
                          onTap: _loginController.setObscure,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Observer(
                    builder: (_) {
                      return SizedBox(
                        height: 44,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: _loginController.loading
                              ? CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )
                              : Text('Login'),
                          color: Theme.of(context).primaryColor,
                          disabledColor:
                              Theme.of(context).primaryColor.withAlpha(100),
                          textColor: Colors.white,
                          onPressed: _loginController.isFormValid,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
