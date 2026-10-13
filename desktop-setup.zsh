#!/usr/bin/env zsh
# Fedora/GNOME tweaks to re-apply manually after a reset.
# Run directly (`./desktop-setup.zsh`) — do not source; it's not zsh config.
set -euo pipefail

echo "==> Raising GNOME 'app not responding' timeout (5s -> 15s)"
# GNOME pings apps every 5s; single-threaded apps like FileZilla block their
# main loop during transfers and miss the ping, triggering the dialog.
# 15s keeps the dialog for truly hung apps. `0` disables the check entirely.
gsettings set org.gnome.mutter check-alive-timeout 15000

echo "==> Done. Log out / back in (or restart the app) for window-related settings to take effect."
