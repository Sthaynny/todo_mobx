// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on _ListControllerBase, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid =>
      (_$isValidComputed ??= Computed<bool>(() => super.isValid)).value;

  final _$titleAtom = Atom(name: '_ListControllerBase.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$todoListAtom = Atom(name: '_ListControllerBase.todoList');

  @override
  ObservableList<Todo> get todoList {
    _$todoListAtom.context.enforceReadPolicy(_$todoListAtom);
    _$todoListAtom.reportObserved();
    return super.todoList;
  }

  @override
  set todoList(ObservableList<Todo> value) {
    _$todoListAtom.context.conditionallyRunInAction(() {
      super.todoList = value;
      _$todoListAtom.reportChanged();
    }, _$todoListAtom, name: '${_$todoListAtom.name}_set');
  }

  final _$_ListControllerBaseActionController =
      ActionController(name: '_ListControllerBase');

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction();
    try {
      return super.setTitle(value);
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToDo() {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction();
    try {
      return super.addToDo();
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteToDo(int index) {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction();
    try {
      return super.deleteToDo(index);
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'title: ${title.toString()},todoList: ${todoList.toString()},isValid: ${isValid.toString()}';
    return '{$string}';
  }
}
