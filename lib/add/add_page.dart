import 'package:flutter/material.dart';

class AddPage  extends StatefulWidget {
  const AddPage ({super.key});
  
  @override
  State<StatefulWidget> createState() => _AddPage();
}

class _AddPage  extends State<AddPage> {
  late TextEditingController  _controller;

 

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    
  }
  @override
  void didUpdateWidget(covariant AddPage oldWidget) {
    
    // TODO: implement didUpdateWidget
    
  }
  @override
  void deactivate() {
    super.deactivate();
    // TODO: implement deactivate
    
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    // TODO: implement dispose
    
  }



  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Новая Задача '),
    ),
    
    body: Column(
    

     
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: 'Название задачи',
            border: OutlineInputBorder()
                    ),
            ),
          ],
        ),
      
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              elevation: 0,
            ),
            onPressed: () => Navigator.pop(context, _controller.text),
            child: const Text('Сохранить'),
          ),
        ),
      ),
  );
  }
}