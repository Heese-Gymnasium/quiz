# Entwicklungstagebuch – Quiz

_Plattform:_ Godot 4 (2D)  
_Teilnehmer:_ Peter, Vasilije, Anna, Eldar

---

## Inhaltsverzeichnis

1. [Git-Setup unter Windows](#git-setup-unter-windows)
2. [Tag 1 – Ideenfindung](#tag-1--ideenfindung)
3. [Tag 2 – Recherche und Konzeptverfeinerung](#tag-2--recherche-und-konzeptverfeinerung)
4. [Tag 3 – Erste Schritte](#tag-3--erste-schritte)
5. [Tag 4 – Frontend- und Backend-Grundlagen](#tag-4--frontend--und-backend-grundlagen)
6. [Tag 5 – Datenbankanbindung und Bugfixing](#tag-5--datenbankanbindung-und-bugfixing)
7. [Tag 6 – Bugfix Türmechanismus und Merge-Probleme](#tag-6--bugfix-türmechanismus-und-merge-probleme)
8. [Tag 7 – Aufgabenplanung bis Mittwoch](#tag-7--aufgabenplanung-bis-mittwoch)

---

## Git-Setup unter Windows

| Schritt | Befehl |
|---|---|
| Proxy einstellen | `git config http.proxy http://10.16.1.1:8080` |
| SSH-Key generieren | `ssh-keygen -t ed25519 -C "your_email@example.com"` |
| Key in Git einbinden | `git config core.sshCommand 'ssh -i [Pfad zum private-key]'` |

### Workflow: Branch aktuell halten

```bash
git checkout main
git pull
git checkout <dein-branch>
git merge main
```

---

## Tag 1 – Ideenfindung

**Ergebnis:** Projektidee festgelegt – Quiz-App.

**Vorläufige Vorhaben:**
- Multiplayer (Kahoot-ähnlich)
- Fragen finden oder selbst erfinden
- Fragetypen: Multiple Choice (ggf. mehrere Antworten möglich) oder Direkteingabe

**Organisation:** Arbeitsteilung im Team festgelegt.

---

## Tag 2 – Recherche und Konzeptverfeinerung

**Ressourcen:**
- Tutorial für 2D-Godot-Entwicklung: [YouTube](https://www.youtube.com/watch?v=LOhfqjmasi0)

**Neue Spielkonzept-Ideen:**
1. 2D-Charakter, der sich frei bewegen kann (Free-Roam)
2. Beim Betreten einer Tür wird der Bildschirm schwarz und ein neuer Raum geladen (von außen nicht einsehbar)
3. Ansicht im Stil von Undertale oder Stardew Valley (Top-Down 2D)
4. Bei falscher Antwort erscheint beim erneuten Betreten derselben Tür eine andere Frage
5. Bestimmte Anzahl an richtigen Antworten nötig, um die nächste Zone zu betreten
6. Nicht alle Fragen müssen richtig beantwortet werden, um das Spiel zu gewinnen
7. Bonus: Alle Fragen richtig beantwortet – spezielles Unlock (z. B. Easter Egg)

---

## Tag 3 – Erste Schritte

| Bereich | Fortschritt |
|---|---|
| Frontend | Texturen rausgesucht, erste Schritte zur Erstellung der Map (Erfahrung gesammelt) |
| Backend | Grundstruktur erstellt |

---

## Tag 4 – Frontend- und Backend-Grundlagen

**Frontend:**
- CollisionLayer eingerichtet
- PlayerMovement implementiert
- Türmechanismus implementiert (noch ohne Sprite)

**Backend:**
- Login-System begonnen
- Sessions-Grundlage erstellt
- Vorbereitungen zum Einbau einer Datenbank (voraussichtlich SQLite)

**Probleme:** Schwierigkeiten beim Merge/Rebase.

---

## Tag 5 – Datenbankanbindung und Bugfixing

**Backend:**
- Auf SQLite umgestellt
- BCrypt für Passwort-Hashing eingebunden
- CSV-Loading überspringt beim Laden die Header-Zeile (erste Zeile)
- Login funktionsfähig
- Sessions werden im Speicher gehalten
- Offen: Sessions in Datenbank persistieren

**Frontend:**
- Bug: Türmechanismus – Teleport erneut funktionslos

---

## Tag 6 – Bugfix Türmechanismus und Merge-Probleme

**Türmechanismus funktioniert wieder.** Funktionierenden Code aus altem Commit wiederhergestellt.

**Git-Probleme:** Bereits gepushte, aber kontraproduktive Änderungen (TileMap- und CollisionShape-Dateien) mussten rückgängig gemacht werden. Bereinigung mithilfe der GitHub-KI. Aktuell alles funktional.

**Aktueller Stand:**
- Charakter-Sprite vorhanden
- CharacterBody-Skript (Bewegungslogik) vorhanden
- Zusätzliche Map (WIP)
- Tür-Sprite vorhanden

**Nächste Schritte:**
- Tür mit Sprite versehen
- Teleport-Transition (Fade-Effekt über CanvasLayer)
- Floating Text oder Textbox über/an Türen

---

## Tag 7 – Aufgabenplanung bis Mittwoch

**Deadline:** Mittwoch, 11.03.2026

Issue [#3 – TODO BIS MITTWOCH](https://github.com/Heese-Gymnasium/quiz/issues/3) wurde angelegt (übernommen aus Mail von @specht). Der Issue enthält 8 Sub-Issues, die bis zur Deadline abgearbeitet werden müssen. Zugewiesen an das gesamte Team (germelmann, eflophie, eldnb, TheOnlyRogueOne).

---

## Gesamtübersicht

| Komponente | Status |
|---|---|
| Spielkonzept | Festgelegt |
| Git-Workflow | Eingerichtet |
| Charakter-Bewegung | Funktioniert |
| Türmechanismus | Funktioniert |
| Map-Design | In Arbeit |
| Teleport-Transition | Offen |
| Backend (Login/Sessions) | Teilweise fertig |
| Datenbank (SQLite) | Teilweise fertig |
| Fragen-System | Offen |
| Multiplayer | Offen |