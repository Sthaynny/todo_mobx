import 'package:mobx/mobx.dart';
part 'todo.g.dart';

class Todo = _TodoBase with _$Todo;

abstract class _TodoBase with Store {
  _TodoBase({this.title = ''});
  String title;

  @observable
  bool done = false;

  @action
  void setState() => done = !done;
}
