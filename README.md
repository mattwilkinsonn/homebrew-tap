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

Each formula's bottle URLs point at its own standalone repo's GitHub Releases,
and the release pipelines bump this tap on every tagged release.

## Migrating from an older tap

These tools were previously distributed from per-tool taps and from the
`mattwilkinsonn/zireael` monorepo tap. All of those are retired — untap
whichever you have, then tap this one:

```bash
brew untap mattwilkinsonn/zireael 2>/dev/null || true
brew untap mattwilkinsonn/jj-hooks 2>/dev/null || true
brew untap mattwilkinsonn/jj-gt 2>/dev/null || true

brew tap mattwilkinsonn/tap
brew install mattwilkinsonn/tap/jj-hooks
brew install mattwilkinsonn/tap/jj-gt
```
