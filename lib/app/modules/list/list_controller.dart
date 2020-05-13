import 'package:mobx/mobx.dart';
import 'package:todomobx/app/models/todo.dart';

part 'list_controller.g.dart';

class ListController = _ListControllerBase with _$ListController;

abstract class _ListControllerBase with Store {
  @observable
  String title = '';

  @observable
  ObservableList<Todo> todoList = ObservableList<Todo>();

  @action
  void setTitle(String value) => title = value;

  @computed
  bool get isValid => title.isNotEmpty;

  @action
  void addToDo() {
    todoList.insert(0, Todo(title: title));
    title = '';
  }

  @action
  void deleteToDo(int index) {
    todoList.removeAt(index);
  }
}
