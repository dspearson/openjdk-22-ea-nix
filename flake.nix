{
  description = "OpenJDK 22 EA binaries";
  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11"; };
  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux = with nixpkgs.legacyPackages.x86_64-linux;
      stdenv.mkDerivation rec {
        name = "jdk-22+${version}";
        version = "5";
        src = pkgs.fetchurl {
          url =
            "https://download.java.net/java/early_access/jdk22/5/GPL/openjdk-22-ea+5_linux-x64_bin.tar.gz";
          sha256 =
            "64f27322499a7876328a444330c8a1c5ff621b3db22129d046b7e8c2e8451e3a";
        };
        sourceRoot = ".";
        installPhase = ''
          cp -r jdk-22 $out
        '';
        meta = with lib; { platforms = platforms.linux; };
      };

    defaultPackage.x86_64-darwin = with nixpkgs.legacyPackages.x86_64-darwin;
      stdenv.mkDerivation rec {
        name = "jdk-22+${version}";
        version = "5";
        src = pkgs.fetchurl {
          url =
            "https://download.java.net/java/early_access/jdk22/5/GPL/openjdk-22-ea+5_macos-x64_bin.tar.gz";
          sha256 =
            "4811be152e370d23e4d2a19e11d6b3d3d6c7c79df5ad15e20e4c9de017c88222";
        };
        sourceRoot = ".";
        installPhase = ''
          cp -r jdk-22 $out
        '';
        meta = with lib; { platforms = platforms.darwin; };
      };

    defaultPackage.aarch64-linux = with nixpkgs.legacyPackages.aarch64-linux;
      stdenv.mkDerivation rec {
        name = "jdk-22+${version}";
        version = "5";
        src = pkgs.fetchurl {
          url =
            "https://download.java.net/java/early_access/jdk22/5/GPL/openjdk-22-ea+5_linux-aarch64_bin.tar.gz";
          sha256 =
            "4a0df847d4239efb0ea7c9a05fcfcc0f2205acfeb6628f9df38f4775d7ad9fd1";
        };
        sourceRoot = ".";
        installPhase = ''
          cp -r jdk-22 $out
        '';
        meta = with lib; { platforms = platforms.linux; };
      };
    defaultPackage.aarch64-darwin = with nixpkgs.legacyPackages.aarch64-darwin;
      stdenv.mkDerivation rec {
        name = "jdk-22+${version}";
        version = "5";
        src = pkgs.fetchurl {
          url =
            "https://download.java.net/java/early_access/jdk22/5/GPL/openjdk-22-ea+5_macos-aarch64_bin.tar.gz";
          sha256 =
            "64f27322499a7876328a444330c8a1c5ff621b3db22129d046b7e8c2e8451e3a";
        };
        sourceRoot = ".";
        installPhase = ''
          cp -r jdk-22 $out
        '';
        meta = with lib; { platforms = platforms.darwin; };
      };
  };
}
