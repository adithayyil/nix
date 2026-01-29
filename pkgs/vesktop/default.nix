{ pkgs, ... }:

pkgs.symlinkJoin {
  name = "vesktop";
  paths = [ pkgs.vesktop ];
  buildInputs = [ pkgs.makeWrapper ];
  postBuild = ''
    wrapProgram $out/bin/vesktop \
      --add-flags "--user-agent-os 'windows'"
  '';
}
