void setup () {
  // declare array
  int[] vals;
  //set array length
  vals = new int[45000]; //this is now just reseved memory space if int datatype
  
  for (int i=0; i<vals.length; i+=1){
    vals[i] = int(random(1000));
  }
  
  print(vals[10]);

}
