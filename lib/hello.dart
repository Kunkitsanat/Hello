import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  final TextEditingController p1 = TextEditingController();
  final TextEditingController p2 = TextEditingController();

  
  // ตัวแปรสำหรับเก็บข้อความที่จะนำไปแสดงบนหน้าจอs
  String result = 'Test';

  @override
  void dispose() {
    p1.dispose();
    p2.dispose();
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
              controller: p1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Choose Rock , Paper , Scissor',
              )),
              ),
              ElevatedButton(
                onPressed: (){

                }, 
                child: const Text('Submit', style: const TextStyle(fontSize: 20))),
              
            ],
          ),
          
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            width: 300,
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: p2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Choose Rock , Paper , Scissor',
              )),
              ),
              ElevatedButton(
                onPressed: (){
                  
                }, 
                child: const Text('Submit', style: const TextStyle(fontSize: 20))),
              
            ],
          ),
          
          Text(result,style: const TextStyle(fontSize: 20))     
        ],
      ),
    );
  }
}