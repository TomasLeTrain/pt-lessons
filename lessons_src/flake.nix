{
  description = "typst dev flake";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
					devShell = pkgs.mkShellNoCC {
						packages = with pkgs; [
							typst
							zathura
							zathuraPkgs.zathura_pdf_mupdf
						];
					};
				}
      );
}
