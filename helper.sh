#!/bin/bash

HELPER_FILE="./helper.md"

show_help() {
cat <<EOF
helper.sh — Linux Cheat Sheet

Usage:
  helper             # Show helper file
  helper -l          # Show helper file
  helper -w          # Edit helper file
  helper -f termo    # Search multiple arguments
  helper -h          # Show command documentation

Requirements:
  - glow
  - less

EOF
}

case "$1" in
  "-w")
    nano "$HELPER_FILE"
    ;;

  "-l" | "")
    glow "$HELPER_FILE"
    ;;
  "-f")
    shift
    if [ "$#" -eq 0 ]; then
      echo "Error: search word needed."
      exit 1
    fi

    pattern=$(IFS='|'; echo "$*")
    grep -Ei --color=always "$pattern" "$HELPER_FILE" | less -R
    ;;

  "-h" | "--help")
    show_help
    ;;
  *)

    echo "Error: Unknow operation '$1'"
    echo "Use -h or --help."
    exit 1
    ;;
esac
