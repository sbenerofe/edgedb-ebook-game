CREATE MIGRATION m1xugyef4p2rbuls5wnznh447u6zwx3ser2cds4pyha2afcsyj26ga
    ONTO m1jtzl2axylfmnokkvhi7ewzq3k4mn2pevxyje5hmu4wbngqdlz7ya
{
  ALTER TYPE default::Person {
      CREATE PROPERTY age -> std::int16;
  };
};
