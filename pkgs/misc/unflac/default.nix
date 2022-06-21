{ lib
, stdenv
, fetchFromGitHub
}:

stdenv.mkDerivation rec {
  pname = "";
  version = "";

  src = fetchFromGitHub {
    owner = "";
    repo = "";
    rev = "";
    hash = lib.fakeHash;
  };

  meta = with lib; {
    description = "";
    homepage = "";
    license = licenses.asl20;
    maintainers = with maintainers; [ dschrempf ];
  };

  # nativeBuildInputs = [ ];
  # buildInputs = [ ];
  # propagatedBuildInputs = [ ];
}
