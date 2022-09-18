module default {
  
abstract type Person {
  required property name -> str;
  multi link places_visited -> Place;
}

type Vampire extending Person {
  property age -> int16;
}

type PC extending Person {
  required property transport -> Transport;
}

type NPC extending Person {
}

abstract type Place {
  required property name -> str;
  property modern_name -> str;
  property important_places -> array<str>;
}

type City extending Place;

type Country extending Place;

scalar type Transport extending enum<Feet, Train, HorseDrawnCarriage>;

}
