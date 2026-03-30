class Animal {
  //attributes
  String name;
  String kingdom;
  DateTime dob;
  int numLegs;

  //constructor
  Animal (this.name, this.kingdom, this.dob, this.numLegs);
  
  //method- walk
  void walk (String direction){
    if (numLegs > 0) {
      print("$name is walking towards the $direction.");
    } else {
      print("$name can't walk because it has no legs.");
    }
  }

  //method: displayInfo
  String displayInfo() {
    return 
        "Name: $name\n"
        "Kingdom: $kingdom\n"
        "Date of Birth: ${dob.toLocal().toString().split(' ')[0]}\n"
        "Number of Legs: $numLegs";
  }
  


}