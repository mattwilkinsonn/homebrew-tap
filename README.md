# homebrew-tap (archived)

> [!IMPORTANT]
> **This tap has been archived.** Formulae have moved into the
> [zireael](https://github.com/mattwilkinsonn/zireael) monorepo at
> [`tap/Formula/`](https://github.com/mattwilkinsonn/zireael/tree/main/tap/Formula).
> The new tap path is:
>
> ```bash
> brew tap mattwilkinsonn/zireael https://github.com/mattwilkinsonn/zireael
> brew install mattwilkinsonn/zireael/<name>
> ```
>
> The old `mattwilkinsonn/tap` path stops getting updates from here forward.
> Existing installs keep working but won't see new releases until you re-tap.

---

Personal [Homebrew](https://brew.sh) tap. Drop formulae here as `.rb` files
under `Formula/` and they're installable via:

```bash
brew install mattwilkinsonn/tap/<name>
```

## Formulae

- `jj-hooks` — run pre-commit / lefthook / hk hooks against jj bookmark
  pushes. See <https://github.com/mattwilkinsonn/jj-hooks>.

## Bumping a formula

After cutting a release of the upstream project:

1. Note the SHA256 of each release tarball (`shasum -a 256 file.tar.gz`).
2. Bump the `version` and per-architecture `sha256` fields in
   `Formula/<name>.rb`.
3. Commit + push the tap repo.

`jj-hooks` release.yml will automate this in a later iteration.
