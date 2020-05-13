import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todomobx/common/custom_icon_button.dart';
import 'package:todomobx/common/custom_text_field.dart';
import 'list_controller.dart';

class ListPage extends StatefulWidget {
  final String title;
  const ListPage({Key key, this.title = "List"}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends ModularState<ListPage, ListController> {
  final _controller = Modular.get<ListController>();
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    TextEditingController _textController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.purple,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Tarefas',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32),
                    ),
                    IconButton(
                      icon: Icon(Icons.exit_to_app),
                      color: Colors.white,
                      onPressed: () {
                        Modular.to.pushReplacementNamed('/');
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Observer(
                          builder: (_) {
                            return CustomTextField(
                              controller: _textController,
                              hint: 'Tarefa',
                              onChanged: _controller.setTitle,
                              suffix: _controller.isValid
                                  ? CustomIconButton(
                                      radius: 32,
                                      iconData: Icons.add,
                                      onTap: () {
                                        _controller.addToDo();
                                        WidgetsBinding.instance
                                            .addPostFrameCallback(
                                          (_) => _textController.clear(),
                                        );
                                      },
                                    )
                                  : null,
                            );
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Observer(
                            builder: (_) {
                              return ListView.separated(
                                itemCount: _controller.todoList.length,
                                itemBuilder: (_, index) {
                                  var todo = _controller.todoList[index];
                                  return Observer(builder: (_) {
                                    return ListTile(
                                      onLongPress: () {
                                        _controller.deleteToDo(index);
                                      },
                                      title: Text(
                                        todo.title,
                                        style: TextStyle(
                                            decoration: todo.done
                                                ? TextDecoration.lineThrough
                                                : null,
                                            color: todo.done
                                                ? Colors.grey
                                                : Colors.black),
                                      ),
                                      onTap: todo.setState,
                                    );
                                  });
                                },
                                separatorBuilder: (_, __) {
                                  return Divider();
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
