import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todoapp/common/helpers/db_helper.dart';
import 'package:todoapp/common/models/task_model.dart';

part 'todo_provider.g.dart';

@riverpod
class TodoState extends _$TodoState {
  @override
  List<Task> build() {
    return [];
  }

  void refresh() async {
    final data = await DBHelper.getItems();
    state = data.map((e) => Task.fromJson(e)).toList();
  }

  void addItem(Task task) async {
    await DBHelper.createItem(task);
    refresh();
  }

  void updateItem(
    int id,
    String title,
    String description,
    int isCompleted,
    String date,
    String startTime,
    String endTime,
  ) async {
    await DBHelper.updateItem(
      id,
      title,
      description,
      isCompleted,
      date,
      startTime,
      endTime,
    );
    refresh();
  }

  Future<void> deleteTodo(int id) async {
    await DBHelper.deleteItem(id);
    refresh();
  }

  void markAsCompleted(
    int id,
    String title,
    String description,
    int isCompleted,
    String date,
    String startTime,
    String endTime,
  ) async {
    await DBHelper.updateItem(
      id,
      title,
      description,
      1,
      date,
      startTime,
      endTime,
    );
    refresh();
  }

  
}
