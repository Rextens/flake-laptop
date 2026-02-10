{ config, pkgs, ...}:

{
    home.username = "rextens";
    home.homeDirectory = "/home/rextens";
    home.stateVersion = "25.11";
    programs.bash = {
        enable = true;

        shellAliases = {
            btw = "echo Hello. I use NixOS btw.";
        };
    };

    xdg.configFile."kdeglobals".source = ./config/kdeglobals;
    xdg.configFile."kitty/kitty.conf".source = ./config/kitty/kitty.conf;
}
