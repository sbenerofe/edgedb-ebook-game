CREATE MIGRATION m1tbemm3jvpz3jltdpd4xysvbjpjt5p24rjc5isolpewbchcutkita
    ONTO m1wtxpnjreh5izppiuvynuoabbdvu2oqmm3mhyl4krz7vavp3em2ya
{
  ALTER TYPE default::City {
      CREATE PROPERTY important_places -> array<std::str>;
  };
};
