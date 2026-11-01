#!/bin/bash
# Neue Version veröffentlichen:  ./release.sh adshield_4.11.0_all.deb "Was ist neu?"
set -e
DEB="$1"; NOTES="${2:-Neue Version}"
[ -f "$DEB" ] || { echo "Datei nicht gefunden: $DEB"; exit 1; }
VER=$(dpkg-deb -f "$DEB" Version)
cp "$DEB" "$(basename "$DEB")" 2>/dev/null || true
SHA=$(sha256sum "$DEB" | cut -d' ' -f1)
WINZIP="adshield-windows_$VER.zip"
if [ -f "$WINZIP" ]; then
  WINSHA=$(sha256sum "$WINZIP" | cut -d' ' -f1)
  WINJSON=$(printf ',\n  "win_zip": "%s",\n  "win_sha256": "%s"' "$WINZIP" "$WINSHA")
fi
cat > version.json <<JSON
{
  "version": "$VER",
  "deb": "$(basename "$DEB")",
  "sha256": "$SHA",
  "notes": "$NOTES"$WINJSON
}
JSON
sed -i "s#adshield-windows_[0-9.]*\.zip#$WINZIP#g" index.html
sed -i "s/Aktuelle Version: <b>[^<]*<\/b>/Aktuelle Version: <b>$VER<\/b>/; s#adshield_[0-9.]*_all.deb#$(basename "$DEB")#g" index.html
echo "Fertig: Version $VER. Jetzt hochladen:  git add . && git commit -m 'Version $VER' && git push"
