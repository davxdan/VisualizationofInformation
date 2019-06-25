class Dataload {
  //add properties inside curlies
  float wt;
  String breed;
  boolean isLongHaired;
  int age;
  
  //add Constructors. Constructors initialize but do not return 
  Dataload() {
  }
  
  Dataload(float wt, String breed) {
    this.wt = wt;
    this.breed = breed;
  }
  
  Dataload(float wt, String breed,boolean isLongHaired,int age) {
    this.wt = wt;
    this.breed = breed;
    this.isLongHaired = isLongHaired;
    this.age = age;
    println("in cstr");
  }

  //add methods
  void move() {
  }
  void eat() {
  }
  void speak() {
  }
  
  // setters and getters
  void setWt(float wt) {
    this.wt = wt;
  }

  float getWt() {
    return wt;
  }
}
