CREATE MIGRATION m1wtxpnjreh5izppiuvynuoabbdvu2oqmm3mhyl4krz7vavp3em2ya
    ONTO m16kot7ytxklcqp24gsez73dglzllsl75k5kqikttgrfjwjhwp7djq
{
  ALTER TYPE default::Person {
      DROP PROPERTY places_visited;
  };
  ALTER TYPE default::Person {
      CREATE MULTI LINK places_visited -> default::City;
  };
};
