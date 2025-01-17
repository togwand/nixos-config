{
  config,
  lib,
  user,
  ...
}:
{
  config = lib.mkIf config.apps.desktop.tofi.enable {
    home-manager.users.${user} = lib.mkIf config.generic.home-manager.enable {
      wayland.windowManager.hyprland.settings = lib.mkIf config.apps.desktop.hyprland.enable {
        bind = [ "$window-easy, a, exec, uwsm app -- pkill tofi-drun || uwsm app -- tofi-drun" ];
      };
      programs.tofi = {
        enable = true;
        settings = {
          hide-cursor = true;
          text-cursor = true;
          history = true;
          fuzzy-match = false;
          require-match = true;
          auto-accept-single = true;
          hide-input = false;
          drun-launch = true;
          terminal = "foot";
          multi-instance = false;
          font = "sans";
          font-size = "24";
          background-color = "#00000099";
          outline-width = 0;
          border-width = 0;
          text-color = "#ffffffff";
          num-results = 0;
          result-spacing = 8;
          width = "0%";
          height = "0%";
          padding-left = "39%";
          padding-top = "28%";
        };
      };
    };
  };
}
