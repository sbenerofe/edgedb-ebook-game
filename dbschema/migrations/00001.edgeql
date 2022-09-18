CREATE MIGRATION m16kot7ytxklcqp24gsez73dglzllsl75k5kqikttgrfjwjhwp7djq
    ONTO initial
{
  CREATE TYPE default::City {
      CREATE PROPERTY modern_name -> std::str;
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  CREATE TYPE default::Person {
      CREATE REQUIRED PROPERTY name -> std::str;
      CREATE PROPERTY places_visited -> array<std::str>;
  };
};
