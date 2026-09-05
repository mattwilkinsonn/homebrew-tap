# mattwilkinsonn/homebrew-tap

The canonical Homebrew tap for [`jj-hooks`](https://github.com/mattwilkinsonn/jj-hooks)
and [`jj-gt`](https://github.com/mattwilkinsonn/jj-gt).

```bash
brew tap mattwilkinsonn/tap
brew install mattwilkinsonn/tap/jj-hooks
brew install mattwilkinsonn/tap/jj-gt
```

- **jj-hooks** — run pre-commit / lefthook / hk hooks against jj bookmark
  pushes (ships `jj-hooks` + `jj-hp`).
- **jj-gt** — bridge jj bookmark stacks and Graphite (`gt`) PR stacks.

Each formula's bottle URLs point at its own standalone repo's GitHub Releases.
These formulae are currently updated by hand; once the standalone release
pipelines are re-pointed at this tap, each tagged release will bump them
automatically.

## Migrating from an older tap

These tools were previously distributed from per-tool taps and from the
`mattwilkinsonn/zireael` monorepo tap, now being retired as distribution
consolidates here. If you installed a tool from one of those, uninstall it
and untap the old tap *before* tapping this one — Homebrew refuses to
install a formula of the same name from a second tap while the old one is
still installed.

```bash
# Only for tools/taps you actually have — brew errors on an unknown keg or an
# un-added tap. `brew tap` lists what you currently have tapped.
brew uninstall jj-hooks jj-gt
brew untap mattwilkinsonn/zireael
brew untap mattwilkinsonn/jj-hooks
brew untap mattwilkinsonn/jj-gt
```

Then tap this one and install:

```bash
brew tap mattwilkinsonn/tap
brew install mattwilkinsonn/tap/jj-hooks mattwilkinsonn/tap/jj-gt
```

A fresh install (no older tap) just needs the two lines above.

If you tapped this repo during an earlier archived window, run `brew update`
first so Homebrew refreshes the stale local clone.
