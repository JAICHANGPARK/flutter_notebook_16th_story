class TodoRepository {
  Future<List<Map<String, dynamic>>> listTodo() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      {'id': 1, 'title': "Future 1", 'createdAt': DateTime.now().toString()},
      {'id': 2, 'title': "Future 2", 'createdAt': DateTime.now().toString()}
    ];
  }
}
