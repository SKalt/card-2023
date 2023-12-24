#!/usr/bin/env bash
random_x() {
  local x=$((RANDOM % 101));
  printf "%dvw" "$x";
}
random_y() {
  local y=$((RANDOM % 1200));
  printf "%dvh" "$y";
}
box_shadow() {
  local name=${1:-snow};
  local n=${2:-100};
  local i=0;
  local x; x="$(random_x)";
  local y; y="$(random_y)";
  printf "  --%s: %s %s" "$name" "$x" "$y";
  for i in $(seq 1 "$n"); do
    x="$(random_x)";
    y="$(random_y)";
    printf ", %s %s" "$x" "$y";
  done
  printf ";\n";
}

main() {
  printf ":root {\n";
  box_shadow  "snow-fg" 100; # fg = foreground
  box_shadow  "snow-mg" 200; # mg = mid-ground
  box_shadow  "snow-bg" 700; # bg = background
  printf "}\n";
}

if [ "${BASH_SOURCE[0]}" = "$0" ]; then main "$@"; fi
