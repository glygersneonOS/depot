#!/bin/sh
# Branche ce PC sur les mises à jour CyberpunkOS (à lancer une seule fois) :
#   wget -q -O - https://glygersneonos.github.io/depot/brancher.sh | sudo sh
set -e
wget -qO /usr/share/keyrings/cyberpunkos-archive.gpg https://glygersneonos.github.io/depot/cyberpunkos-archive.gpg
cat > /etc/apt/sources.list.d/cyberpunkos.sources << 'EOS'
Types: deb
URIs: https://glygersneonos.github.io/depot
Suites: ./
Signed-By: /usr/share/keyrings/cyberpunkos-archive.gpg
EOS
apt-get update
apt-get install -y cyberpunkos
echo "CyberpunkOS est branché sur les mises à jour : les prochaines versions arriveront dans le CyberStore."
