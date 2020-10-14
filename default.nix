with import <nixpkgs> {};

stdenv.mkDerivation rec {
    name = "thesis";
    buildInputs = [
        gnumake
        tikzit
        (texlive.combine { inherit (texlive) scheme-basic memoir textcase babel-french csquotes adjustbox xkeyval collectbox pgf xcolor biblatex biber mathtools latexmk; })
    ];
    src = pkgs.lib.sources.sourceFilesBySuffices ./. [".tex" ".pdf" "Makefile" ".bib" ".bbx" ".cbx"];
}
