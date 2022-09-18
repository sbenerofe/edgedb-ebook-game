CREATE MIGRATION m1jtzl2axylfmnokkvhi7ewzq3k4mn2pevxyje5hmu4wbngqdlz7ya
    ONTO m14av5uszoez3t6clh5hpcoueqwnkdxo2ezr54gsnhsrqygpm4cf3a
{
  ALTER TYPE default::Person SET ABSTRACT;
  CREATE TYPE default::NPC EXTENDING default::Person;
  CREATE TYPE default::PC EXTENDING default::Person {
      CREATE REQUIRED PROPERTY transport -> default::Transport;
  };
};
