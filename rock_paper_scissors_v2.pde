/*
Robert Mackay
16003059
Rock Paper Scissors

Version 2
14/09/2017
*/

//game variables
int generated = 0; // 1=rock, 2=paper, 3=scissors
int win = 0;  // 0=notplayed, 1=loss, 2=win, 3=draw

//button variables
int guessy = 50;
int rockx = 150;
int paperx = 400;
int scissorsx = 650;
int guessW = 200;
int guessH = 50;


void setup() {
  size(800,800);
  smooth();
  rectMode(CENTER);
  textSize(20);
}


void draw() {
  background(255);
  fill(255);
  
  //drawing buttons
  rect(rockx,guessy,200,50);
  rect(paperx,guessy,200,50);  
  rect(scissorsx,guessy,200,50);
  fill(0);
  textAlign(CENTER);
  text("Rock",rockx,guessy+5);
  text("Paper",paperx,guessy+5);
  text("Scissors",scissorsx,guessy+5);
  
  //displaying game info
  textAlign(LEFT);
  if(win == 0){
    text("Choose a guess",50,200); 
    
  } else if(win == 1){  //if game was lost    
    if(generated == 1){
      text("Your openent has chosen rock",50,200);
    } else if(generated == 2){
      text("Your openent has chosen paper",50,200);
    } else if(generated == 3){
      text("Your openent has chosen scissors",50,200);
    }    
    text("You lost!",50,250);
       
  }else if(win == 2){  //if game was won    
    if(generated == 1){
      text("Your openent has chosen rock",50,200);
    } else if(generated == 2){
      text("Your openent has chosen paper",50,200);
    } else if(generated == 3){
      text("Your openent has chosen scissors",50,200);
    }    
    text("You won!",50,250);
    
  }else if(win == 3){ //if game was draw    
    if(generated == 1){
      text("Your openent has chosen rock",50,200);
    } else if(generated == 2){
      text("Your openent has chosen paper",50,200);
    } else if(generated == 3){
      text("Your openent has chosen scissors",50,200);
    }    
    text("Its a draw!",50,250);
  }    
      
}

void mouseClicked(){
  
  if((mouseX > rockx-guessW/2 && mouseX < rockx+guessW/2) && (mouseY > guessy-guessH/2 && mouseY < guessy+guessH/2)){     
    generate();
     if(generated == 1){
       win = 3;
     } else if(generated == 2){
       win = 1;
     } else if(generated == 3){
       win = 2;
     }        
     
   } else if((mouseX > paperx-guessW/2 && mouseX < paperx+guessW/2) && (mouseY > guessy-guessH/2 && mouseY < guessy+guessH/2)){      
     generate();
   if(generated == 1){
       win = 2;
     } else if(generated == 2){
       win = 3;
     } else if(generated == 3){
       win = 1;
     }
          
   } else if((mouseX > scissorsx-guessW/2 && mouseX < scissorsx+guessW/2) && (mouseY > guessy-guessH/2 && mouseY < guessy+guessH/2)){     
     generate();        
   if(generated == 1){
       win = 1;
     } else if(generated == 2){
       win = 2;
     } else if(generated == 3){
       win = 3;
     }
     
   } //end if           
}


void generate() {
  generated = int(random(1,4));
  println(generated);
  
  if(generated == 1){
    println("rock");
  } else if(generated == 2){
    println("paper");
  } else if(generated == 3){
    println("scissors");
  }
     
  println();
}