let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.05";
  pkgs = import nixpkgs {
    config = {};
    overlays = [];
  };
in
  pkgs.mkShellNoCC {
    packages = with pkgs; [
      typst
	  zathura
	  zathuraPkgs.zathura_pdf_mupdf
    ];
  }
