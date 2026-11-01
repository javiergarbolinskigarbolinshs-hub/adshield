# 🛡 AdShield

Werbeblocker für Google Chrome auf Linux – mit Tutorial, Status-Ampel, Deutsch/Englisch,
täglichen Filter-Updates und Update-Funktion.

**Download und Anleitung:** siehe die Webseite dieses Repositories (GitHub Pages).

## Unterstützte Systeme
- ✅ Linux Mint, Ubuntu, Debian, Pop!_OS, Zorin OS mit Google Chrome
- ✅ Chromium (eigenes AdShield-Fenster)
- ⚠️ Brave: nicht getestet
- ⚠️ Fedora, openSUSE, Arch: .deb nicht direkt installierbar
- ⚠️ Windows 10/11 mit Google Chrome: neu, noch nicht auf echtem Windows getestet
- ❌ macOS, Chromebook, Android, iOS, Firefox, Safari

## Neue Version veröffentlichen
```
./release.sh adshield_X.Y.Z_all.deb "Was ist neu?"
git add . && git commit -m "Version X.Y.Z" && git push
```
