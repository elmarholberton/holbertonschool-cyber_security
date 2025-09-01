#!/bin/bash
# Print the current SELinux mode in a checker-friendly format.

# 1) Prefer getenforce if available
if command -v getenforce >/dev/null 2>&1; then
    mode="$(getenforce 2>/dev/null)"
    case "$mode" in
        Disabled|disabled)
            printf "SELinux status:                 disabled\n"; exit 0 ;;
        Enforcing|Permissive|enforcing|permissive)
            # Normalize to lowercase to match typical checker output
            printf "Current mode:                   %s\n" "$(echo "$mode" | tr '[:upper:]' '[:lower:]')"; exit 0 ;;
    esac
fi

# 2) If sysfs exposes the enforce knob, use it
if [ -r /sys/fs/selinux/enforce ]; then
    v="$(cat /sys/fs/selinux/enforce 2>/dev/null || echo)"
    if [ "$v" = "1" ]; then
        printf "Current mode:                   enforcing\n"; exit 0
    elif [ "$v" = "0" ]; then
        printf "Current mode:                   permissive\n"; exit 0
    fi
fi

# 3) Try sestatus as a fallback
if command -v sestatus >/dev/null 2>&1; then
    if sestatus | grep -qi '^SELinux status:.*disabled'; then
        printf "SELinux status:                 disabled\n"; exit 0
    fi
    cur="$(sestatus | awk -F: '/^Current mode/{gsub(/^[ \t]+/,"",$2); print tolower($2)}')"
    if [ -n "$cur" ]; then
        printf "Current mode:                   %s\n" "$cur"; exit 0
    fi
fi

# 4) If nothing else indicates SELinux is active, assume disabled (common on Debian/Kali)
printf "SELinux status:                 disabled\n"
