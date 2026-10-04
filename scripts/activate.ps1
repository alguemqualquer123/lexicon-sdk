# Lexicon SDK activator (PowerShell). Usage: . scripts/activate.ps1
$SdkBin = Join-Path $PSScriptRoot ".." "bin" | Resolve-Path | Select-Object -ExpandProperty Path
if (($env:PATH -split ";") -notcontains $SdkBin) { $env:PATH = "$SdkBin;$env:PATH" }
Write-Host "Lexicon SDK active ($SdkBin)" -ForegroundColor Green
lex version
