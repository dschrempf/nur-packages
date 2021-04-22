{ lib
, buildGoModule
, file
, libjpeg
, libpng
, libtiff
, stdenv
, fetchFromGitLab
}:

buildGoModule rec {
  pname = "findimagedupes";
  version = "246ed15b86eccbd73bc5cbf4e97dacf9807fa748";

  src = fetchFromGitLab {
    owner = "opennota";
    repo = "findimagedupes";
    rev = "246ed15b86eccbd73bc5cbf4e97dacf9807fa748";
    sha256 = "1fqgw8mqx51wj75gsywanzfinpzz9nrjwm3g4q86h67pdnhhzr32";
  };

  meta = with lib; {
    broken = true;
    description = "Find visually similar or duplicate images";
    homepage = "https://gitlab.com/opennota/findimagedupes";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ dschrempf ];
  };

  buildInputs = [ file libjpeg libpng libtiff ];

  vendorSha256 = "1k9s8rmd742swvgpwzihvlaqbb47c5kxzgl7pmddlgl0aybdpjas";

  runVend = true;

  # nativeBuildInputs = [ ];
  # buildInputs = [ ];
  # propagatedBuildInputs = [ ];
}
