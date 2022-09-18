CREATE MIGRATION m14av5uszoez3t6clh5hpcoueqwnkdxo2ezr54gsnhsrqygpm4cf3a
    ONTO m1tbemm3jvpz3jltdpd4xysvbjpjt5p24rjc5isolpewbchcutkita
{
  CREATE SCALAR TYPE default::Transport EXTENDING enum<Feet, Train, HorseDrawnCarriage>;
};
