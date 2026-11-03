# 🛡 AdShield

Werbeblocker für Google Chrome auf Linux, Windows und Mac – mit Tutorial, Status-Ampel, Deutsch/Englisch,
täglichen Filter-Updates und Update-Funktion.

**Download und Anleitung:** siehe die Webseite dieses Repositories (GitHub Pages).

## Neu in Version 4.11.1
- 🪟 **AdShield gibt es jetzt auch für Windows 10/11** (mit Google Chrome): ZIP herunterladen, entpacken, `AdShield-Installieren.bat` doppelklicken.
- 🍎 **Und für den Mac** (macOS 11+, Google Chrome): ZIP entpacken, `AdShield.app` in „Programme“ ziehen, beim ersten Start per Rechtsklick → Öffnen.
- 🔄 Die Update-Abfrage („Jetzt aktualisieren – Ja oder Nein?“) funktioniert auch unter Windows.
- 🎬 YouTube-Werbung wird schneller übersprungen.
- 🕵️ Bessere Tarnung gegen Seiten, die Werbeblocker erkennen (zum Beispiel South Park).
- 🧹 Auf dieser Seite liegt nur noch die neueste Version – alte Dateien wurden entfernt.

> Die Windows- und Mac-Version sind neu und wurde noch nicht auf vielen echten Computern getestet. Fehler bitte als „Issue“ melden.

## Unterstützte Systeme
- ✅ Linux Mint, Ubuntu, Debian, Pop!_OS, Zorin OS mit Google Chrome
- ✅ Chromium (eigenes AdShield-Fenster)
- ⚠️ Brave: nicht getestet
- ⚠️ Fedora, openSUSE, Arch: .deb nicht direkt installierbar
- ⚠️ Windows 10/11 mit Google Chrome: neu, noch nicht auf echtem Windows getestet
- ⚠️ macOS 11+ mit Google Chrome: neu, noch nicht auf echtem Mac getestet
- ❌ Chromebook, Android, iOS, Firefox, Safari

## Neue Version veröffentlichen
```
./release.sh adshield_X.Y.Z_all.deb "Was ist neu?"
git add . && git commit -m "Version X.Y.Z" && git push
```
