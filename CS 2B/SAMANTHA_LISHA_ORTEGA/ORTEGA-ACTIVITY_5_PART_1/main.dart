import 'Pet.dart';
import 'Animal.dart';

void main() {
  // ZOO LIST (5 Animals)
  List<Animal> ZOO = [
    Animal("Lion", "Mammal", DateTime(2018, 3, 10), 4),
    Animal("Snake", "Reptile", DateTime(2020, 6, 5), 0),
    Animal("Frog", "Amphibian", DateTime(2019, 8, 12), 4),
    Animal("Eagle", "Bird", DateTime(2017, 2, 20), 2),
    Animal("Shark", "Fish", DateTime(2016, 11, 1), 0),
  ];

  print("*** ZOO ANIMALS ***");

  // Loop through ZOO
  for (var animal in ZOO) {
    print(animal.displayInfo());
    animal.walk("north");
    print("");
  }


  // PET_HOME LIST (2-3 Pets)
  List<Pet> PET_HOME = [
    Pet.withNickname("Dog", "Mammal", DateTime(2021, 1, 1), 4, "Satoru"),
    Pet("Cat", "Mammal", DateTime(2020, 5, 5), 4),
    Pet.withNickname("Parrot", "Bird", DateTime(2019, 7, 7), 2, "Suguru"),
  ];

  print("\n*** PET HOME ***");

  // manipulate kindness values
  PET_HOME[0].kick(200);   // decrease (may go below 0)
  PET_HOME[1].kick(50);    // decrease

  PET_HOME[2].feed(1200);  // increase above 1000
  PET_HOME[0].pet(1500);   // increase above 1000

  print("\n=== FINAL PET STATUS ===");

  for (var pet in PET_HOME) {
    print(pet.displayInfo());
  }
}