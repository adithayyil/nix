{ pkgs, pkgs-stable, ... }:

# Use DaVinci from stable (Mesa 24.x) to avoid RustiCL crash
# Mesa 25.3+ has broken OpenCL support for DaVinci Resolve
# See: https://github.com/zelikos/davincibox/issues/72

pkgs-stable.davinci-resolve
