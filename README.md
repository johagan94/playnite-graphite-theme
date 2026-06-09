# Graphite — a Playnite desktop theme

A grayscale, Material-elevation theme for [Playnite](https://playnite.link) desktop mode.
Monochrome surfaces, soft elevation, Poppins type, and a custom game-details layout.

## Highlights

- **Custom details view** — a full-bleed hero banner with clear-logo support, over three
  recessed cards: **Details**, **Achievements**, and **How Long To Beat**.
- **True-grayscale achievement grid** — locked badges render in monochrome and flip to full
  colour the moment they unlock. The grid is virtualised (only on-screen badges render) and
  ordered first-earned-first.
- **Graphite HowLongToBeat bar** — the HLTB progress bar restyled into the theme's grays,
  with Main Story / Main + Extras / Completionist stats.
- **One-row top bar** — the sidebar rail and search merged into a single clean header, with a
  dark "pill" selection highlight instead of a bright accent bar.
- **Monochrome accents** — grey ratings and scores instead of blue.

## Recommended plugins

All optional — the matching card simply stays empty if a plugin isn't installed:

- **[PlayniteAchievements](https://github.com/justin-delano/PlayniteAchievements)** — drives the
  achievement grid (via its Modern Bindings).
- **HowLongToBeat** — drives the HLTB card.
- **ExtraMetadataLoader** — supplies the clear-logo on the hero banner.

## Install

**From source:** clone into Playnite's `Themes/Desktop` folder, or clone anywhere and run
`setup-devlink.ps1` to junction `source/` into Playnite for live editing.

**As a package:** pack `source/` into a `.pthm` with Playnite's
[Toolbox](https://api.playnite.link/docs/devel/themes/themesIntro.html) and open it with Playnite.

## Requirements

Playnite 10+ (`ThemeApiVersion 2.9.0`).

## Credits

Built as a delta over Playnite's Default desktop theme. Theme by Jack.
