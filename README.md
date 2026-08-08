# Chapters — Story of My Life

A leather-bound journaling app: a bookshelf of journals you name and fill a page a day
(with a real page-flip), plus a **Top 100** life-goals list. Self-contained PWA — plain
`index.html` + `manifest.json` + `sw.js` + `icon.svg`, saving to your device's `localStorage`.

## Hosting (Render)
This repo deploys to Render as a **Static Site** (see `render.yaml`):
- Build command: none
- Publish directory: `.`

Every `git push` to `main` triggers an automatic redeploy.

## Update it
From this folder:
```
./push.sh "what you changed"
```
That commits and pushes; Render redeploys in ~30s.

## Wrap as a phone app (later)
Same path as the Hatch app: drop these files into a Capacitor `www/` folder,
`npx cap add ios` / `npx cap add android`, open in Xcode / Android Studio.
