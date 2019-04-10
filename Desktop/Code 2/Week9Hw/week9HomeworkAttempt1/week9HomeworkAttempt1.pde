String text = "This unicorn has a horn and is a mythological creature.";
int order = 3;
int gramCounter;
ArrayList <String> nGrams = new ArrayList <String>();

void setup(){
  int ngramSize = text.length()/order;
  
    for( int i = 0; i < ngramSize; i++){
    String gram = text.substring(i, i+3);
    if(!nGrams.contains(gram)){
      gramCounter = 1; 
    }else{
      gramCounter ++;
    }
    nGrams.add(gram);
    println(gram, gramCounter, '\n');
}
}


void markovIt(){
  int currentGram = text.length()/order;
  int possibilities = nGrams<ngramSize>(currentGram);
  
  float next = random(possibilities);
  
  int result = currentGram + next;
  
}


void mousePressed(){
  
}
