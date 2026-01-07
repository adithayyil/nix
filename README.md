# nix

My NixOS flake with multi-host support and standalone home-manager.

## Hosts

- **think**: desktop 
- **meth**: server

## Structure

```
~/nix/
├── flake.nix            # Flake entry point
├── justfile             # Build/deploy automations
├── hosts/               # Per-host configs
├── common/              # Shared across all hosts
├── profiles/            # Role-based (desktop, server)
├── programs/            # System programs
├── pkgs/                # Custom packages
└── home/                # Home-manager (standalone, user-level)
```

## Usage

### Desktop
```bash
just                # Rebuild system + home-manager
just switch         # System only
just home           # Home-manager only (fast)
just upgrade        # Update flake + rebuild
```

### Server
```bash
just deploy meth         # Deploy to server remotely
just ssh meth            # SSH to server
just deploy-upgrade meth # Update + deploy
```

### Secrets
```bash
sops secrets/secrets.yaml  # Edit encrypted secrets (age keys required)
```

**Age keys**:
- Desktop: `~/.config/sops/age/keys.txt`
- Server: `/var/lib/sops-nix/key.txt`

