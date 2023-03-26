{ config, ... }:
{
  services.redshift = {
    enable = true;
    temperature = {
      day = 5600;
      night = 1800;
    };
    brightness = {
      day = "1";
      night = "0.9";
    };
  };
}
