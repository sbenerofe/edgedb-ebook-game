CREATE MIGRATION m1b7ao4setuy5eirs6qmjmfonjsnx2f425xofmi2aia2ej5fps7uua
    ONTO m1xugyef4p2rbuls5wnznh447u6zwx3ser2cds4pyha2afcsyj26ga
{
  CREATE ABSTRACT TYPE default::Place {
      CREATE PROPERTY important_places -> array<std::str>;
      CREATE PROPERTY modern_name -> std::str;
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  ALTER TYPE default::City EXTENDING default::Place LAST;
  ALTER TYPE default::City {
      ALTER PROPERTY important_places {
          DROP OWNED;
          RESET TYPE;
      };
  };
  ALTER TYPE default::City {
      ALTER PROPERTY modern_name {
          DROP OWNED;
          RESET TYPE;
      };
  };
  ALTER TYPE default::City {
      ALTER PROPERTY name {
          RESET OPTIONALITY;
          DROP OWNED;
          RESET TYPE;
      };
  };
  CREATE TYPE default::Country EXTENDING default::Place;
  ALTER TYPE default::Person {
      ALTER LINK places_visited {
          SET TYPE default::Place;
      };
  };
  ALTER TYPE default::Person {
      DROP PROPERTY age;
  };
  CREATE TYPE default::Vampire EXTENDING default::Person {
      CREATE PROPERTY age -> std::int16;
  };
};
