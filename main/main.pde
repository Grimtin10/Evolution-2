//public Neuron(int trigger,int trigVal,boolean pos,Neuron[] con){

Neuron n1;
Neuron n2;
Neuron n3;

Neuron[] c1 = new Neuron[1];
Neuron[] c2 = new Neuron[1];
Neuron[] c3 = new Neuron[1];

void setup(){
  size(1600,900);
  n1 = new Neuron(100,20,true,c1);
  n2 = new Neuron(100,10,true,c2);
  n3 = new Neuron(100,10,true,c3);
  c1[0]=n2;
  c2[0]=n3;
  c3[0]=n1;
}

void draw(){
  background(0);
  update();
  fill(255);
  println(n1.val,n2.val);
  ellipse(width/2-100,height/2,n1.val,n1.val);
  ellipse(width/2+100,height/2,n2.val,n2.val);
  ellipse(width/2,height/2+100,n3.val,n3.val);
}

void update(){
  n1.addVal(10);
  n1.update();
  n2.update();
  n3.update();
}