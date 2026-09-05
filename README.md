# mattwilkinsonn/homebrew-tap

The canonical Homebrew tap for [`jj-hooks`](https://github.com/mattwilkinsonn/jj-hooks)
and [`jj-gt`](https://github.com/mattwilkinsonn/jj-gt).

```bash
brew tap mattwilkinsonn/tap
brew install mattwilkinsonn/tap/jj-hooks
brew install mattwilkinsonn/tap/jj-gt
```

- **jj-hooks** — run pre-commit / lefthook / hk hooks against jj bookmark pushes (ships `jj-hooks` + `jj-hp`).
- **jj-gt** — bridge jj bookmark stacks and Graphite (`gt`) PR stacks.

Each formula's bottle URLs point at its own standalone repo's GitHub Releases.
These formulae are currently updated by hand; once the standalone release
pipelines are re-pointed at this tap, each tagged release will bump them
automatically.

## Migrating from an older tap

These tools were previously distributed from per-tool taps and from the
`mattwilkinsonn/zireael` monorepo tap, all now retired. Tap this one and install
first, so your tools are never in a deleted or ambiguous state:

```bash
brew tap mattwilkinsonn/tap
brew install mattwilkinsonn/tap/jj-hooks mattwilkinsonn/tap/jj-gt
```

Then untap whichever old taps you had:

```bash
brew untap mattwilkinsonn/zireael
brew untap mattwilkinsonn/jj-hooks
brew untap mattwilkinsonn/jj-gt
```

If you had a tool installed from one of those taps, `brew untap` will prompt to
uninstall it first (or refuse in a non-interactive shell) — that is expected,
and the reinstall above has already put the current version in place. Skip any
tap you never added; brew reports it as untapped and moves on.
