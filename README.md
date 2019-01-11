[![Build][build-img]][build-url]

# GTR

> Sammlung von GTR Programmen für den Texas Instruments TI-84 Plus

Hier ist der Quellcode für unsere GTR Programme zuhause. Im Sinne von Open Source frei einseh- und änderbar. Lizensiert unter der [CC0-Lizenz](LICENSE).

## Inhaltsverzeichnis

1. [Nutzung](#nutzung)
2. [Probleme?](#probleme)
3. [Technisches](#technisches)
4. [Mitmachen](#mitmachen)
5. [Richtlinien](#richtlinien)

## Nutzung

Das Verarbeiten und Übertragen des Quelltextes auf den Taschenrechner ist etwas kompliziert (siehe [Technisches](#technisches)) und deshalb nur zu empfehlen, wenn man sich damit auseinandersetzten möchte.
Wird nur das fertige Programm benötigt, so ist es empfehlenswert, sich dieses von einem anderen Taschenrechner zu holen, der die entsprechende Version bereits geladen hat.

## Probleme?

Für einen Fehler bitte ein Ticket im [Issue-Tracker](https://github.com/fschillerg/gtr/issues) [eröffnen](https://github.com/fschillerg/gtr/issues/new).
Zuvor bitte prüfen, ob dieses Problem nicht bereits geschildert wurde.
Wenn ein Fehler oder Problem gemeldet wird, ist eine genaue Beschreibung dessen immer hilfreich.

Sollten Fragen zur genaueren Nutzung der Programme offen sein, ist es ratsam, sich direkt an einen Ansprechpartner zu wenden.

## Technisches

### Benötigte Software

- [TI Connect CE](https://education.ti.com/de/produkte/computer-software/ti-connect-ce-sw)
- _optional:_ [GNU Make](https://www.gnu.org/software/make)

### Setup

**_Hinweis:_** Die folgenden Schritte beziehen sich auf die Quelltexten aus dieser Repository. Bei jedem Release werden automatisch die Quelltexte in minimierter Form angehangen, und können so direkt per TI Connect übertragen werden.

Die Quelltexte sind leserlich geschrieben und ausführlich kommentiert. Da der Speicher auf dem Taschenrechner allerdings stark begrenzt ist, werden die Programme vor der Übetragung auf den Taschenrechner entsprechend minimiert.

#### Makefile

Diese Repository bietet eine Makefile, die alle Programme aufbereitet, diese funktioniert allerdings nur für POSIX-Systeme:

```shell
make
```

Im Anschluss sind alle Programme unter `dist` zu finden.

#### Einzeln

Das Programm `tipp` ist in zwei Varianten vorhanden: `tipp.sh` als Shell-Skript für POSIX-Systeme und `tipp.ps1` als PowerShell Skript für Windows.

Die Benutzung ist identisch:

```shell
tipp pfad/zur/eingabedatei pfad/zur/ausgabedatei
```

(`tipp` ersetzen durch `./tipp.sh` oder `.\tipp.ps1`)

Dabei wird die Ausgabedatei überschrieben, wenn sie bereits vorhanden ist.

Nach der Vorbereitung durch `tipp` kann der Code in TI Connect geladen und auf den Taschenrechner übertragen werden.

## Mitmachen

Wer etwas verbessern oder hinzufügen möchte darf gerne eine Pull Request stellen.

Dabei sind die [Richtlinien](#richtlinien) zu beachten.

## Richtlinien

_Hinweis:_ Code mit Worten zu beschreiben, ist nicht immer eindeutig. Deshalb lohnt sich immer ein Blick in ein Programm, um einen Eindruck vom gewünschten Stil zu erhalten.

**Grundsätzliches:** Der Code sollte lesbar, sinnvoll eingeteilt und effizient sein.

### Projekt-Struktur

Dieses Projekt ist wie folgt gegliedert:

Jedes Programm befindet sich in einem eigenen Ordner. Der Name des Programms wird in Großbuchstaben geschrieben, die Datei hat die Endung `.8xp`.

Hier ein Beispiel für zwei Programme, `PROG` und `ANDERES`:

```
Projekt
    | PROG
    -   PROG.8xp
    | ANDERES
    -   ANDERES.8xp
```

### Variablen

Mit Variablen sollte immer so sparsam wie möglich umgeganden werden, wenn sie überschrieben werden, da der Nutzer sie eventuell für andere Zwecke nutzt und für das Speichern von Werten nutzt.

Deshalb sollten Variablen auch unbedingt für den Nutzer genau so bezeichnet werden, wie sie im Programm genutzt werden. Erhält der Nutzer die Ausgabe `c=12345`, so **muss** im Code dafür auch `C` genutzt werden.

Außerdem sollten für den Benutzer relevante Variablen nicht gelöscht werden. Variablen, die nur vom Programm genutzt werden und nicht in der Ausgabe in Erscheinung treten, können gelöscht werden. Diese, die jedoch in der Ausgabe auftauchen, dürfen **nicht** gelöscht werden, damit sie auch nach Beendigung des Programms noch zur Verfügung stehen.

### Kommentare

Der gesamte Quelltext sollte ausreichend und übersichtlich kommentiert werden.
Kommentare werden durch `"` eingeleitet. Sie **müssen** in einer eigenen Zeile stehen, nicht hinter auszuführendem Code.

Grundsätzlich sollten bedeutende Programmteile mit einem Block im folgenden Format begonnen werden:

```
"""""""""""""""
" Oberbegriff "
"""""""""""""""
```

Dieser Block soll eine grobe Vorstellung dafür vermitteln, was im folgenden Programmteil behandelt wird.

Einzelne Punkte im Programm, die sich mit einer konkreten Berechnung befassen, sollten wie folgt eingeleitet werden:

```
Lbl A
" Titel des Programmpunktes
" Eingabe: a: ein Wert
"          b: ein anderer Wert
"          f(x): eine Funktion
" Ausgabe: C: ein Ergebnis
Disp "Code kommt hier hin..."
```

Diese Einleitung sollte genau festlegen, welche Werte eingefordert werden und welche berechnet bzw. ausgegeben werden und was sie bedeuten.

## Benutzeroberfläche

Die Benutzeroberfläche sollte leicht verständlich gestaltet sein. Für Menüeintrage und sonstigen Text werden **nicht** durchgehende Großbuchstaben genutzt, sondern die gewöhnliche Deutsche Rechtschreibung. Abkürzungen aufgrund von Platzmangel werden nur genutzt, wo nötig.

## Sprache

Für die Benutzeroberfläche wird die Deutsche Sprache genutzt, ebenso für die Kommentare.

[build-img]: https://travis-ci.com/fschillerg/gtr.svg?branch=master
[build-url]: https://travis-ci.com/fschillerg/gtr
