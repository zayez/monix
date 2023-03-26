{ config, pkgs, ...}:
{
  services.mongodb = {
    enable = false;
    enableAuth = true;
    initialRootPassword = "root";
    initialScript = pkgs.writeText "mongodb_initial.js" ''
      db = db.getSiblingDB("nixtest");
      db.createUser({user:"nixtest",pwd:"nixtest",roles:[{role:"readWrite",db:"nixtest"}]});
    '';
  };
}
