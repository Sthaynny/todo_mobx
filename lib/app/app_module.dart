import 'package:todomobx/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:todomobx/app/app_widget.dart';
import 'package:todomobx/app/modules/list/list_controller.dart';
import 'package:todomobx/app/modules/list/list_module.dart';
import 'package:todomobx/app/modules/login/login_module.dart';

import 'modules/login/login_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => AppController(),
        ),
        Bind(
          (i) => ListController(),
        ),
        Bind(
          (i) => LoginController(),
        ),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: LoginModule()),
        Router('/list', module: ListModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
