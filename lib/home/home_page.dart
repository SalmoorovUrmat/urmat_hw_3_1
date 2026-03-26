import 'package:flutter/material.dart';
import 'package:flutter_application_33/add/add_page.dart';
import 'package:flutter_application_33/task/task.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> _tasks = [];

  void _naviateToAddPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddPage()),
    );
    if (result != null && result.toString().isNotEmpty) {
      setState(() {
        _tasks.add(
          Todo(title: result.toString(), date: DateTime.now(), id: 0 + 1),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        constraints: BoxConstraints(maxHeight: 200),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 4, 187, 83),
          borderRadius: BorderRadius.circular(12),
        ),

        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          shrinkWrap: true,
          itemCount: _tasks.length,

          itemBuilder: (context, index) {
            final dateTime = _tasks[index].date;
            return ListTile(
              onTap: () {
                print(_tasks[index].id);
              },
              title: Text(_tasks[index].title),
              leading: const Icon(
                Icons.check_box_outline_blank,
                color: Colors.black,
              ),
              trailing: Text(dateTime.toString()),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 12),
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),

        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(9),
            ),
            elevation: 0,
          ),

          onPressed: _naviateToAddPage,

          child: const Icon(Icons.add),
        ),
      ),
    );
  }
  // void _naviateToAddPage()async{

  // final result  = await Navigator.push(context, MaterialPageRoute(builder: (_) => AddPage() ));
  //if (result != null){
  //print ('распечатать: $result');
  //}
  //}
}
