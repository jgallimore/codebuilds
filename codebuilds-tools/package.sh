#!/bin/bash
set -e;

echo "Starting vscode-linux-${PACKAGE_ARCH}...";
gulp "vscode-linux-${PACKAGE_ARCH}";

echo "Starting vscode-linux-${PACKAGE_ARCH}-build-deb...";
gulp "vscode-linux-${PACKAGE_ARCH}-build-deb";

echo "Starting vscode-linux-${PACKAGE_ARCH}-build-rpm...";
gulp "vscode-linux-${PACKAGE_ARCH}-build-rpm";

echo "Starting vscode-linux-${PACKAGE_ARCH}-build-flatpak...";
gulp "vscode-linux-${PACKAGE_ARCH}-prepare-flatpak";

# echo "Tarring build folder for release...";
# tar -zcvf "archive_${LABEL}.tar.gz" .build | tee -a ../buildlog_${LABEL}.txt;