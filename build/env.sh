#!/bin/sh

set -e

if [ ! -f "build/env.sh" ]; then
    echo "$0 must be run from the root of the repository."
    exit 2
fi

# Create fake Go workspace if it doesn't exist yet.
# The folder name is _workspace
workspace="$PWD/build/_workspace"
root="$PWD"

# Create src catalog.According to the go source build rule
wisdomdir="$workspace/src/github.com/WisedomChainGroup"
if [ ! -L "$wisdomdir/go-WisdomChain_Core" ]; then
    mkdir -p "$wisdomdir"
    cd "$wisdomdir"
    ln -s ../../../../../. go-WisdomChain_Core
    cd "$root"
fi

# Set up the environment to use the workspace. Add to the GOPATH
GOPATH="$workspace"
export GOPATH

# Run the command inside the workspace.
cd "$wisdomdir/go-WisdomChain_Core"
PWD="$wisdomdir/go-WisdomChain_Core"

# Launch the arguments with the configured environment.
exec "$@"