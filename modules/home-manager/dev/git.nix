{
  config,
  lib,
  user,
  ...
}:
{
  options = { };
  config = {
    home-manager.users.${user} = {
      programs.git-credential-oauth.enable = true;
      programs.git = {
        enable = true;
        lfs.enable = true;
        userEmail = "togwand@gmail.com";
        userName = "togwand";
        extraConfig = {
          init = {
            defaultBranch = "base";
          };
          push = {
            autoSetupRemote = true;
          };
        };
      };
    };
  };
}