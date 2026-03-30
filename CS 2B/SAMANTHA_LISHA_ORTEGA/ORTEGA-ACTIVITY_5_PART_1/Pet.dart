import 'Animal.dart';

class Pet extends Animal{
     // Additional Attributes
    String? nickname;
    int kindness = 0;

    // constructor without nickname
  Pet(String name, String kingdom, DateTime dob, int numLegs)
      : nickname = null,
        kindness = 0,
        super(name, kingdom, dob, numLegs);

  // constructor with nickname
  Pet.withNickname(String name, String kingdom, DateTime dob, int numLegs, String this.nickname)
      : kindness = 100, // positive starting value
        super(name, kingdom, dob, numLegs);

  // method: kick
  void kick(int value) {
    kindness -= value;
    print("$name was kicked! Kindness decreased by $value. Current: $kindness");
  }

  // method: pet
  void pet(int value) {
    if (kindness < 0) {
      print("$name refuses affection. Kindness is too low ($kindness).");
    } else {
      kindness += value;
      print("$name enjoyed being petted! Kindness increased by $value. Current: $kindness");
    }
  }

  // additional method: feed
  void feed(int value) {
    kindness += value;
    print("$name was fed! Kindness increased by $value. Current: $kindness");
  }

  // override displayInfo
  @override
  String displayInfo() {
    return super.displayInfo() +
        " | Nickname: ${nickname ?? "None"} | Kindness: $kindness";
  }
}