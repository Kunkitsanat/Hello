import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  final TextEditingController name = TextEditingController();
  
  // ตัวแปรสำหรับเก็บข้อความที่จะนำไปแสดงบนหน้าจอ
  String displayName = '';

  @override
  void dispose() {
    name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            width: 300,
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your name',
              )),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    displayName = name.text;
                  });
                }, 
                child: const Text('Hello', style: const TextStyle(fontSize: 20))),
              
            ],
          ),
          
          if(displayName.isNotEmpty)(
             Text('Hello, $displayName !' , style: const TextStyle(fontSize: 20),)
          )      
        ],
      ),
    );
  }
}