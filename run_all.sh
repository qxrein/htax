#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LIBRELANE_HOME="${LIBRELANE_HOME:-$HOME/projects/librelane}"

echo "=== Stage 1: Functional Simulation ==="
(cd "$ROOT/tb" && make)

echo "=== Stage 2: Formal Verification ==="
if ! command -v z3 >/dev/null 2>&1; then
    echo "ERROR: z3 SMT solver not found (brew install z3, or use nix-shell)"
    exit 1
fi
(cd "$ROOT/formal" && sby -f htax.sby)

echo "=== Stage 3: ASIC Implementation ==="
if [[ -d "$LIBRELANE_HOME" ]]; then
    (cd "$ROOT/impl" && PYTHONPATH="$LIBRELANE_HOME" python -m librelane config.json)
else
    echo "WARN: LibreLane not found at $LIBRELANE_HOME — skipping Stage 3"
    echo "      Set LIBRELANE_HOME or clone https://github.com/librelane/librelane"
fi

echo "=== All stages complete ==="
