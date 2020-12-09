#!/bin/sh
echo "===>Installing igpk for Linux..."
echo "===>Fetching package..."
cd /tmp
wget https://github.com/glowiak/gpk/releases/download/igpk/igpk-0.1.tgz
echo "===>Extracting package..."
tar xzf /tmp/igpk-0.1.tgz -C /
echo "Completed!"
