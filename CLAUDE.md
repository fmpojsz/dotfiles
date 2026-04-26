# Repo conventions

## Decisions

- **Brewfile is the contract.** Any tool used in shell config must be in `Brewfile` or guarded.
- **Work identity stays out of repo.** Lives in untracked `~/.gitconfig.work`, pulled in via `includeIf`.

## Shell startup

- Don't fork a subshell to fetch values already in scope. Use `$HOMEBREW_PREFIX` over `$(brew --prefix)`; hardcode `$HOME/go/bin` over `$(go env GOPATH)`.
- Lazy-load slow init by wrapping each tool in its own function (e.g. `ca()` for conda).
