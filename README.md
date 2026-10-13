# Dotfiles

Personal shell configuration. Currently targets **zsh**.

## Files

| File | Purpose |
|------|---------|
| `aliases.zsh` | Shell aliases (includes a `reload` alias) |
| `general.zsh` | General shell options; sources `aliases.zsh` |
| `desktop-setup.zsh` | Manual Fedora/GNOME tweaks to re-apply after a reset |

## Setup

### 1. Clone the repo

```sh
git clone https://github.com/dominickp/t2-dotfiles.git ~/Documents/GitHub/dotfiles
```

### 2. Source the files

Add the following to your `~/.zshrc`:

```sh
# Dotfiles
source "$HOME/Documents/GitHub/dotfiles/general.zsh"
```

### 3. Reload your shell

```sh
exec zsh
```

Once `aliases.zsh` is loaded, you can re-source your config from anywhere with:

```sh
reload
```

## Desktop setup (Fedora/GNOME)

Run `./desktop-setup.zsh` manually after a reset — see comments in the script
for what each tweak does and why.
