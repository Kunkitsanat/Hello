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
  String p1_ans = '';
  String p2_ans = '';
  String result = 'Test';

  @override
  void dispose() {
    p1.dispose();
    p2.dispose();
    super.dispose();
  }


  String showResult(String p1 , String p2){
    String ans;
    int p1_score = 0;
    int p2_score = 0;

    if(p1 == 'rock' && p2 != 'rock'){
      if(p2 == 'paper'){
        p2_score += 1;
      }
      else if(p2 == 'scissor'){
        p1_score += 1;
      }
    };

    if(p1 == 'paper' && p2 != 'paper'){
      if(p2 == 'rock'){
        p1_score += 1;
      }
      else if(p2 == 'scissor'){
        p2_score += 1;
      }
    };

    if(p1 == 'scissor' && p2 != 'scissor'){
      if(p2 == 'rock'){
        p2_score += 1;
      }
      else if(p2 == 'paper'){
        p1_score += 1;
      }
    };

    if(p1_score > p2_score)(
      ans = 'Player 1 Win! , Player 2 Lose!'
    );
    else if(p1_score < p2_score)(
      ans = 'Player 2 Win! , Player 1 Lose!'
    );
    else(
      ans = 'Tie!'
    );
    return ans;
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
                  p1_ans = p1.text;
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
                  setState(() {
                    p2_ans = p2.text;
                  });
                }, 
                child: const Text('Submit', style: const TextStyle(fontSize: 20))),
            ],
          ),
          
          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: (){
              setState(() {
                result = showResult(p1_ans, p2_ans);
              });
            },
            child: const Text('Finish', style: const TextStyle(fontSize: 20))),

          const SizedBox(height: 20),
          Text(result , style: const TextStyle(fontSize: 20))  
        ],
      ),
    );
  }
}