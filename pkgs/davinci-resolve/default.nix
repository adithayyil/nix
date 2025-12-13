{ pkgs, ... }:

# Wrapper provides Python packages + OpenCL via LD_LIBRARY_PATH
# (mesa.opencl not automatically found in FHS environment)

let
  pythonWithPackages = pkgs.python3.withPackages (
    ps: with ps; [
      pyqt5
      tkinter
    ]
  );
in
pkgs.symlinkJoin {
  name = "davinci-resolve-wrapped";
  paths = [ pkgs.davinci-resolve ];
  nativeBuildInputs = [ pkgs.makeWrapper ];

  postBuild = ''
    wrapProgram $out/bin/davinci-resolve \
      --prefix PYTHONPATH : "${pythonWithPackages}/${pythonWithPackages.sitePackages}" \
      --prefix LD_LIBRARY_PATH : "${pkgs.mesa.opencl}/lib" \
      --set OCL_ICD_VENDORS "${pkgs.mesa.opencl}/etc/OpenCL/vendors"
  '';
}
