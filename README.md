# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Test local changes

Home Manager installs this configuration at `~/.config/nvim` from the pinned
GitHub flake input. That path is managed by Nix, so use this clone for local
edits instead of changing files under `~/.config/nvim`.

From this repository, start Neovim with:

```bash
./bin/nvim-test
```

The launcher sets `XDG_CONFIG_HOME` to this repository's parent directory and
`NVIM_APPNAME` to this repository's name. Neovim therefore loads this checkout
as its config while using separate `nvim-config` data, state, and cache
directories instead of the managed instance's `nvim` directories. Arguments
are passed through, so commands such as `./bin/nvim-test init.lua` work too.

## Publish and apply changes

After testing the changes:

```bash
git add .
git commit
git push origin main
```

Then update the pinned `nvim-config` input and reapply Home Manager:

```bash
cd ../nix-home
nix flake lock --update-input nvim-config
./switch eubankreilan2
```

Use `./switch eubankreilan2-desktop` instead when applying the desktop profile.
