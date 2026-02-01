# ==========================================
# NixOS system configuration
# Author: yogarajjuju
# NOTE:
# - Hardware-specific values may differ
# - Adjust disk, GPU, and hostName before use
# ==========================================

{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Kolkata";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [
      "en_US.UTF-8/UTF-8"
    ];
  };

  nixpkgs.config.allowUnfree = true;

  users.users.juju = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

  # ---- Garbage collection (keep generations low) ----
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 3d";
  };

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    # ---- base tools ----
    git
    curl
    wget
    htop
    vim
    neovim
    kitty
    cava
    fastfetch
    neofetch
    btop
    cmatrix
    starship
    firefox
    microfetch
    hyprlock
    hyprpaper






    # ---- apps ----
    google-chrome
    vscode
    spotify

    # ---- zsh plugins ----
    zsh-autosuggestions
    zsh-syntax-highlighting

    # =========================
    # Hyprland (install only)
    # =========================
    hyprland
    xdg-desktop-portal
    xdg-desktop-portal-hyprland

    waybar
    rofi
    swww
    hyprpicker

    grim
    slurp
    wl-clipboard
    cliphist

    playerctl
    brightnessctl
    pamixer
    pavucontrol

    jq
    libnotify
    pciutils

    # ---- Notifications (Wayland) ----
    mako

    # ---- Network tray helper ----
    networkmanagerapplet
  ];

fonts.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
];

  programs.zsh.interactiveShellInit = ''
    source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  '';

  # ---- Desktop (KDE stays default) ----
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.printing.enable = true;

  # ---- Audio ----
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  security.rtkit.enable = true;

  # ---- FIX Wi-Fi password prompts ----
  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;

  # =========================
# NVIDIA GTX 1650 (PRIME)
# =========================

services.xserver.videoDrivers = [ "nvidia" ];

hardware.nvidia = {
  modesetting.enable = true;
  powerManagement.enable = true;
  powerManagement.finegrained = true;

  open = false; # GTX 1650 requires proprietary driver

  nvidiaSettings = true;

  prime = {
    offload.enable = true;
    offload.enableOffloadCmd = true;

    # AMD iGPU (Ryzen 5600H)
    amdgpuBusId = "PCI:5:0:0";
    # NVIDIA dGPU
    nvidiaBusId = "PCI:1:0:0";
  };
};

hardware.graphics = {
  enable = true;
  enable32Bit = true;
};
# Enable Hyprland as a Wayland session (for SDDM)
programs.hyprland = {
  enable = true;
};



  system.stateVersion = "25.11";
}
