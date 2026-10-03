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
    ans = 'Player 1 Win!'
  );
  else if(p1_score < p2_score)(
    ans = 'Player 2 Win!'
  );
  else(
    ans = 'Tie!'
  );
  return ans;
}