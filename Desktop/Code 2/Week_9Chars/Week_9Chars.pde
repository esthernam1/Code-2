String text = "Good evening ladies and gentlemen, we love coding so much!";
int n = 3;
int gramCounter;

//String ngrams [];
ArrayList <String> ngrams = new ArrayList <String>();

void setup(){
  
  int ngramSize = text.length()/n;
  
  //ngrams = new String [ngramSize];
  
  for( int i = 0; i < ngramSize; i++){
    String gram = text.substring(i, i+3);
    
    if(!ngrams.contains(gram)){
      gramCounter = 1; 
    }else{
      
      gramCounter ++;
    }
    ngrams.add(gram);
    println(gram, gramCounter, '\n');
    
    //ngrams[i] = gram;
    //println(ngrams[i]);
    
    
  }
}


void draw(){
  
}
