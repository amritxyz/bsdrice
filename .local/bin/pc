#!/bin/sh

# This script will clean temporary files, package caches, logs, etc., on an OpenBSD system.

echo "Starting OpenBSD cleanup..."

# 1. Clean package cache (pkg_add keeps downloaded packages in cache)
echo "Cleaning package cache..."
pkg_info -a | xargs pkg_delete -y # Delete all unnecessary packages and dependencies (use with caution)
rm -rf /var/cache/pkg/*             # Delete downloaded packages in the cache

# 2. Clean temporary directories
echo "Cleaning temporary directories..."
rm -rf /tmp/*         # Clean /tmp folder
rm -rf /var/tmp/*     # Clean /var/tmp folder
rm -rf /root/.cache/* # Clean root user's cache folder if present

# 3. Remove old log files
echo "Cleaning log files..."
find /var/log -type f -name '*.gz' -exec rm -f {} \;   # Remove old compressed log files
find /var/log -type f -name '*.1' -exec rm -f {} \;     # Remove rotated log files

# 4. Remove old crash dumps (if any)
echo "Removing old crash dumps..."
rm -f /var/crash/*

# 5. Clean the X11 cache (if applicable)
echo "Cleaning X11 cache..."
rm -rf /usr/X11R6/tmp/*  # Clean temporary X11 files

# 6. Remove unnecessary files (manually specified)
echo "Removing unnecessary files..."
rm -f /root/.bash_history
rm -f /home/*/.bash_history
rm -f /root/.zsh_history
rm -f /home/*/.zsh_history
rm -f /root/.viminfo

# 7. Clean up broken symlinks
echo "Cleaning broken symlinks..."
find / -type l -exec test ! -e {} \; -delete

# 8. Optionally, clear the system journal (if you use syslogd)
echo "Clearing system logs..."
> /var/log/messages
> /var/log/daemon

# 9. Remove old email files (if applicable)
echo "Removing old email files..."
rm -rf /var/mail/*

# 10. Check for orphaned files (use with caution)
# echo "Checking for orphaned files..."
# pkg_info -a | while read -r pkg; do
#     # Look for orphaned files by checking if the package exists
#     if ! pkg_info "$pkg" > /dev/null 2>&1; then
#         echo "Orphaned file found: $pkg"
#         # Uncomment to remove orphaned files:
#         # rm -f /path/to/file
#     fi
# done

echo "Cleanup completed!"

# Optional: Reboot or prompt the user for a reboot
#echo "Rebooting system..."
#reboot
