import 'package:flutter/material.dart';
import 'game_logic.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  
  // ตัวแปรสำหรับเก็บข้อความที่จะนำไปแสดงบนหน้าจอs
  String p1_ans = '';
  String p2_ans = '';
  String result = '';


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Player 1: Choose' , style: TextStyle(fontSize: 20),),
        const SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(
                key: Key('p1_rock_btn'),
                onPressed: (){
                  p1_ans = 'rock';
                }, 
                child: const Text('Rock', key: Key('p1_rock'),style: TextStyle(fontSize: 18),)),

              ElevatedButton(
                key: Key('p1_sciss_btn'),
                onPressed: (){
                  p1_ans = 'scissor';
                }, 
                child: const Text('Scissor',key: Key('p1_sciss'),style:  TextStyle(fontSize: 18),)),

              ElevatedButton(
                key: Key('p1_paper_btn'),
                onPressed: (){
                  p1_ans = 'paper';
                }, 
                child: const Text('Paper', key: Key('p1_paper'),style:  TextStyle(fontSize: 18),)),
      
 
            ],
          ),
          
          const SizedBox(height: 20,),

          ElevatedButton(
            key: Key('p1_btn'),
            onPressed: (){
              p1_ans = p1_ans;
            }, 
            child: const Text('Submit', key: Key('p1_submit'),style: TextStyle(fontSize: 18),)),   

          const SizedBox(height: 50,),

          Text('Player 2: Choose' , style: TextStyle(fontSize: 20),),
          const SizedBox(height: 20,),
          
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(
                key: Key('p2_rock_btn'),
                onPressed: (){
                  p2_ans = 'rock';
                }, 
                child: const Text('Rock',key: Key('p2_rock'),style: TextStyle(fontSize: 18),)),

              ElevatedButton(
                key: Key('p2_sciss_btn'),
                onPressed: (){
                  p2_ans = 'scissor';
                }, 
                child: const Text('Scissor',key: Key('p2_sciss'),style: TextStyle(fontSize: 18),)),

              ElevatedButton(
                key: Key('p2_paper_btn'),
                onPressed: (){
                  p2_ans = 'paper';
                }, 
                child: const Text('Paper', key: Key('p2_paper'),style: TextStyle(fontSize: 18),)),
              
            ],
          ),

          const SizedBox(height: 20,),

          ElevatedButton(
            key: Key('p2_btn'),
            onPressed: (){
              setState(() {
                p2_ans = p2_ans;
              });
            }, 
            child: const Text('Submit', key: Key('p2_submit'),style: TextStyle(fontSize: 18),)),

          const SizedBox(height: 50),

          ElevatedButton(
            key: Key('finish_btn'),
            onPressed: (){
              setState(() {
                result = showResult(p1_ans, p2_ans);
              });
            },
            child: const Text('Finish', style: const TextStyle(fontSize: 20),)),

          const SizedBox(height: 20),
          Text(result , style: const TextStyle(fontSize: 32))  
        ],
      ),
    );
  }
}