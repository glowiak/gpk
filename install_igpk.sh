#!/bin/sh
echo "===>Installing igpk for Linux..."
echo "===>Fetching package..."
curl -k https://github.com/glowiak/gpk/releases/download/igpk/igpk-0.1.tgz -o /tmp/igpk.tgz
echo "===>Extracting package..."
tar xzf /tmp/igpk.tgz -C /
echo "Completed!"
