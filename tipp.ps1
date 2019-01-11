param (
    [string]$in,
    [string]$out
)

function Help {
    Write-Host "tipp.ps1 - Entfernt leere Zeilen und Kommentare aus dem Quellcode."
    Write-Host ""
    Write-Host "  tipp.ps1 <input> [output]"
    Write-Host ""
    Write-Host "    input - Eingabedatei mit zu bearbeitendem Quelltext"
    Write-Host "    output - Ausgabedatei für bearbeiteten Quelltext, wird überschrieben falls vorhanden"
}

if (-not $in) {
    Help
    exit 0
}

if (-not ($in | Test-Path)) {
    Write-Host "Fehler! Die Eingabedatei ist nicht vorhanden: ${in}"
    exit 1
}

$lines = Get-Content $in | Select-String -pattern '^\"' -notmatch | Where {$_.ToString().Trim().Length -gt 0}

if ($out) {
    foreach ($line in $lines) {
        $line.ToString().Trim() >> $out
    }
} else {
    foreach ($line in $lines) {
        $line.ToString().Trim()
    }
}
