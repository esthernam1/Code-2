String text = "I am very tired and it is almost ten. Should i get a snack?";

int order = 3;

int generatedTextLength = 100;

HashMap <String, ArrayList<String>>chain;

void setup() {
  size(600, 600);
  chain = new HashMap <String, ArrayList<String>>();
  for (int i = 0; i<text.length() - order; i++) {
    String gram = text.substring(i, i + order);

    ArrayList<String> characters;
    if (!chain.containsKey(gram)){
      characters = new ArrayList<String>();
      chain.put(gram, characters);
    }else{
      characters = chain.get(gram);
  }
  characters.add(text.substring(i+order, i+order+1));
}
}

void draw() {
  background(0);
  fill(255);
  textAlign(CENTER);
  text(results, width/4, height/4, width/2, height/2);
}

String results = " ";
void mousePressed(){
  String currentGram = text.substring(0, order);
  results = currentGram;
  for(int i = 0; i < generatedTextLength; i++){
    if(chain.containsKey(currentGram)){
      ArrayList <String> characters = chain.get(currentGram);
      results += characters.get(round(random(characters.size()-1)));
      
      currentGram = results.substring(results.length()-order, results.length());
    }
  }
}
