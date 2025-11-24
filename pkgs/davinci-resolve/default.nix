{ pkgs, ... }:

# DaVinci Resolve with additional Python packages for scripting
let
  pythonWithPackages = pkgs.python3.withPackages (ps: with ps; [
    pyqt5
    tkinter
  ]);
in
pkgs.symlinkJoin {
  name = "davinci-resolve";
  paths = [ pkgs.davinci-resolve ];
  nativeBuildInputs = [ pkgs.makeWrapper ];
  postBuild = ''
    wrapProgram $out/bin/davinci-resolve \
      --prefix PYTHONPATH : "${pythonWithPackages}/${pythonWithPackages.sitePackages}"
  '';
}
