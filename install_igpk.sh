#!/bin/sh
echo "===>Installing igpk..."
echo "===>Fetching package..."
cd /tmp
wget http://github.com/glowiak/gpk/releases/download/igpk/igpk-1.1_x86_64.gpk
echo "===>Installing package..."
sudo /usr/local/bin/gpk-install /tmp/igpk-1.1_x86_64.gpk
echo "Completed!"
