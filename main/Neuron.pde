public class Neuron{
  int val = 0;
  int trigger = 100;
  int trigVal = 1;
  boolean pos = false;
  Neuron[] c = new Neuron[0];
  
  public Neuron(int trigger,int trigVal,boolean pos,Neuron[] _c){
    this.trigger = trigger;
    this.trigVal = trigVal;
    this.pos = pos;
    c = _c;
  }
  
  public void update(){
    if(val>=trigger){
      val=0;
      for(int i=0;i<c.length;i++){
        c[i].addVal((pos)?trigVal:-trigVal);
      }
    }
  }
  
  public void addVal(int val){
    this.val+=val;
  }
}