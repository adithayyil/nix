# Rebuild and switch
default: switch

# Rebuild system
switch:
    sudo nixos-rebuild switch --flake . --impure

# Test without switching boot
test:
    sudo nixos-rebuild test --flake . --impure

# Check for errors
check:
    nixos-rebuild dry-build --flake . --impure

# Update flake inputs
update:
    nix flake update

# Update and rebuild
upgrade: update switch

# List generations
generations:
    nixos-rebuild list-generations

# Rollback to previous
rollback:
    sudo nixos-rebuild switch --rollback

# Clean old generations (7 days)
clean:
    sudo nix-collect-garbage --delete-older-than 7d

# Clean everything
clean-all:
    sudo nix-collect-garbage -d

# Show what would be cleaned
gc-check:
    nix-store --gc --print-dead

# Optimize store
optimize:
    sudo nix-store --optimise

# Show flake info
info:
    nix flake show

# Check flake
lint:
    nix flake check --impure
