{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = builtins.getEnv "USER";
  home.homeDirectory = builtins.getEnv "HOME";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')

    pkgs.aria2
    pkgs.asciinema
    pkgs.asdf-vm
    pkgs.aspell
    pkgs.aspellDicts.en
    pkgs.aspellDicts.fr
    pkgs.aspellDicts.pt_BR
    pkgs.attr
    pkgs.bash
    pkgs.bat
    pkgs.cacert
    pkgs.cmus
    pkgs.curl
    pkgs.curlie
    pkgs.difftastic
    # pkgs.emacs
    pkgs.eza
    pkgs.fd
    pkgs.ffmpeg
    pkgs.fpp
    pkgs.fzf
    pkgs.git
    pkgs.git-lfs
    pkgs.htop
    pkgs.httpie
    pkgs.hurl
    pkgs.imagemagick
    pkgs.jq
    pkgs.multimarkdown
    pkgs.neofetch
    pkgs.nnn
    pkgs.nushell
    pkgs.p7zip
    pkgs.pandoc
    pkgs.perl
    pkgs.pigz
    pkgs.pv
    pkgs.ripgrep
    pkgs.rlwrap
    pkgs.shellcheck
    pkgs.shfmt
    pkgs.silver-searcher
    pkgs.stow
    pkgs.subversionClient
    pkgs.television
    pkgs.tmux
    pkgs.tree
    pkgs.viddy
    pkgs.xclip
    pkgs.yazi
    pkgs.zed-editor
    pkgs.zellij
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/felipe/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      # add_newline = false;

      # character = {
      #   success_symbol = "[➜](bold green)";
      #   error_symbol = "[➜](bold red)";
      # };

      # package.disabled = true;

      # java = {
      #   symbol = "🌟 ";
      # };

      # ~/.config/starship.toml
    };
  };

  programs.emacs.enable = true;
}
