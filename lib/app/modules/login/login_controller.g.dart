// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  Computed<Function> _$isFormValidComputed;

  @override
  Function get isFormValid =>
      (_$isFormValidComputed ??= Computed<Function>(() => super.isFormValid))
          .value;
  Computed<bool> _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid))
          .value;
  Computed<bool> _$isPasswordValidComputed;

  @override
  bool get isPasswordValid => (_$isPasswordValidComputed ??=
          Computed<bool>(() => super.isPasswordValid))
      .value;

  final _$emailAtom = Atom(name: '_LoginControllerBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_LoginControllerBase.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$obscureAtom = Atom(name: '_LoginControllerBase.obscure');

  @override
  bool get obscure {
    _$obscureAtom.context.enforceReadPolicy(_$obscureAtom);
    _$obscureAtom.reportObserved();
    return super.obscure;
  }

  @override
  set obscure(bool value) {
    _$obscureAtom.context.conditionallyRunInAction(() {
      super.obscure = value;
      _$obscureAtom.reportChanged();
    }, _$obscureAtom, name: '${_$obscureAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_LoginControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassWord(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction();
    try {
      return super.setPassWord(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setObscure() {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction();
    try {
      return super.setObscure();
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'email: ${email.toString()},password: ${password.toString()},obscure: ${obscure.toString()},loading: ${loading.toString()},isFormValid: ${isFormValid.toString()},isEmailValid: ${isEmailValid.toString()},isPasswordValid: ${isPasswordValid.toString()}';
    return '{$string}';
  }
}
