{
  hardware.display = {
    edid = {
      enable = true;
      modelines = {
        "XG2402@144" = "333.216  1920 1928 1960 2000  1080 1143 1151 1157  +hsync -vsync";
        "XG2402@120" = "274.560  1920 1928 1960 2000  1080 1130 1138 1144  +hsync -vsync";
        "XG2402@105" = "238.350  1920 1928 1960 2000  1080 1121 1129 1135  +hsync -vsync";
        "XG2402@90" = " 202.860  1920 1928 1960 2000  1080 1113 1121 1127  +hsync -vsync";
      };
    };
    outputs = {
      "DP-1" = {
        edid = "XG2402@120.bin";
      };
    };
  };
}