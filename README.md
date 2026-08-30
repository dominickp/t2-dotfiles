# Dotfiles

Personal shell configuration. Currently targets **zsh**.

## Files

| File | Purpose |
|------|---------|
| `aliases.zsh` | Shell aliases (includes a `reload` alias) |

## Setup

### 1. Clone the repo

```sh
git clone git@github.com:<you>/dotfiles.git ~/Documents/GitHub/dotfiles
```

### 2. Source the files

Add the following to your `~/.zshrc`:

```sh
# Dotfiles
source "$HOME/Documents/GitHub/dotfiles/aliases.zsh"
```

Tip: define a variable at the top of `~/.zshrc` to keep paths short:

```sh
export DOTFILES="$HOME/Documents/GitHub/dotfiles"
source "$DOTFILES/aliases.zsh"
```

### 3. Reload your shell

```sh
exec zsh          # restart the shell, picks up all config changes
# or
source ~/.zshrc   # re-source the config in the current shell
```

Once `aliases.zsh` is loaded, you can re-source your config from anywhere with:

```sh
reload
```

## Adding more dotfiles

1. Add a new file to this repo (e.g. `functions.zsh`, `exports.zsh`).
2. Add a matching `source` line to your `~/.zshrc`.
3. Commit and push.
