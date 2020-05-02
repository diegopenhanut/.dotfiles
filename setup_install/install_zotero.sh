#!/usr/bin/env bash

wget https://download.zotero.org/client/release/5.0.66/Zotero-5.0.66_linux-x86_64.tar.bz2

tar -xzfv Zotero-5.0.66_linux-x86_64.tar.bz2

cd Zotero

# mv to /opt/zotero

set_launcher_icon

ln -s /opt/zotero/zotero.desktop ~/.local/share/applications/zotero.desktop

