# Verifies relative href targets from public/*.html exist (run from repo root or anywhere).
$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot
$public = Join-Path $repoRoot "public"
if (-not (Test-Path $public)) { throw "Missing public/: $public" }

$htmlFiles = Get-ChildItem -Path $public -Filter "*.html" -File
$fail = @()
foreach ($page in $htmlFiles) {
  $raw = Get-Content -LiteralPath $page.FullName -Raw
  foreach ($m in [regex]::Matches($raw, 'href="([^"]+)"')) {
    $href = $m.Groups[1].Value
    if ($href -match '^(https?:|mailto:|#|//|data:)' ) { continue }
    $rel = (($href -split '[?#]', 2)[0]).TrimStart("/")
    if (-not $rel) { continue }
    $target = Join-Path $public ($rel -replace "/", [IO.Path]::DirectorySeparatorChar)
    if (-not (Test-Path -LiteralPath $target)) {
      $fail += "$($page.Name) -> $href (expected $target)"
    }
  }
}
if ($fail.Count -gt 0) {
  Write-Host "Broken relative links:" -ForegroundColor Red
  $fail | ForEach-Object { Write-Host $_ }
  exit 1
}
Write-Host "OK: all relative links in public/*.html resolve under public/" -ForegroundColor Green
exit 0
