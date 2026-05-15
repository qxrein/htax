{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Simulators
    verilator
    gtkwave
    iverilog

    # Formal
    sby
    yosys
    boolector
    z3

    # Just bare python + pip, no cocotb from nix
    python3
    python3Packages.pip
    python3Packages.virtualenv
  ];

  shellHook = ''
    # Create venv if it doesn't exist
    if [ ! -d .venv ]; then
      echo "Creating virtual environment..."
      python3 -m venv .venv
    fi

    source .venv/bin/activate

    # Install cocotb and pyuvm via pip if not already installed
    if ! python3 -c "import cocotb" 2>/dev/null; then
      echo "Installing cocotb + pyuvm..."
      pip install --quiet cocotb pyuvm
    fi

    echo "=============================="
    echo " HTAX Verification Shell"
    echo "=============================="
    echo "verilator : $(verilator --version | head -1)"
    echo "sby       : $(sby --version 2>/dev/null || echo 'not found')"
    echo "cocotb    : $(cocotb-config --version)"
    echo "pyuvm     : $(python3 -c 'import pyuvm; print(pyuvm.__version__)')"
    echo "=============================="
  '';
}
