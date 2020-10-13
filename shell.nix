with import <nixpkgs> {};

stdenv.mkDerivation rec {
    name = "thesis";
    buildInputs = [
        gnumake
        tikzit
        (texlive.combine { inherit (texlive) scheme-basic memoir textcase babel-french csquotes adjustbox xkeyval collectbox pgf xcolor biblatex mathtools; })
    ];
}
