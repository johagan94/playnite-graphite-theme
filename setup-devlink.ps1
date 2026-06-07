<#
.SYNOPSIS
    Creates the live-reload link so Playnite loads this repo's theme directly.

.DESCRIPTION
    Junctions  %APPDATA%\Playnite\Themes\Desktop\Graphite  ->  <repo>\source
    so edits under source/ are picked up by Playnite on its next restart, with no
    copy/deploy step. Junctions do NOT require administrator rights.

    Run this once after cloning the repo (or whenever the link goes missing).
#>
$ErrorActionPreference = "Stop"

$repoSource = Join-Path $PSScriptRoot "source"
$themesDir  = Join-Path $env:APPDATA "Playnite\Themes\Desktop"
$link       = Join-Path $themesDir "Graphite"

if (-not (Test-Path $repoSource)) { throw "Missing theme source folder: $repoSource" }

New-Item -ItemType Directory -Force $themesDir | Out-Null

if (Test-Path $link) {
    $item = Get-Item $link -Force
    if ($item.LinkType) {
        $item.Delete()
    } else {
        throw "$link already exists and is a real folder (not a link). Move/remove it first."
    }
}

New-Item -ItemType Junction -Path $link -Target $repoSource | Out-Null
Write-Host "Linked: $link  ->  $repoSource" -ForegroundColor Green
Write-Host "Restart Playnite, then enable the theme via Settings -> Appearance -> General -> Theme."
