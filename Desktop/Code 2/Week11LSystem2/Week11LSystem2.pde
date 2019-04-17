class LSystem{
  String axiom;
  String rule;
  
  float theta;
  int generations;
  
  
  LSystem(){
    axiom = "F";
    rule = "F+F-F";
    theta = radians(120.0);
  }
}