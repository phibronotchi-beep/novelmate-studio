# Build Novelmate Studio Family Hype PDF
$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Root = Split-Path -Parent $ScriptDir
Set-Location $Root

$typst = Get-Command typst -ErrorAction SilentlyContinue
if (-not $typst) {
  Write-Host "Typst not found. Install: winget install Typst.Typst" -ForegroundColor Red
  exit 1
}

$py = Get-Command python -ErrorAction SilentlyContinue
if ($py) {
  & python (Join-Path $Root "scripts\optimize_rasters_for_pdf.py")
}

$out = Join-Path $Root "Novelmate-Studio-Family-Hype.pdf"
typst compile --root $Root (Join-Path $Root "typ\main.typ") $out

$item = Get-Item $out
Write-Host ""
Write-Host "OK: $($item.FullName)" -ForegroundColor Green
Write-Host "Size: $([math]::Round($item.Length / 1MB, 2)) MB"
