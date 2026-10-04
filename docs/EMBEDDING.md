# Embedding Lexicon (SDK)

v1 integration contract is the stable CLI over subprocess:

- `lex check <file>` — exit 0 + diagnostics on stdout; non-zero on errors.
- `lex run --ci <file>` — runs to completion, never prompts, never serves.
- `lex test` — prints `Passed: N / Failed: M` summary lines (parse them).
- `lex fmt --check` — exit status only (0 = clean).
- `lex version` — `lex <ver> (lexc <ver>, spec v0.1)` first line.

Environment knobs honoured by every binary:

- `CI=true` / `--ci` — non-interactive mode.
- `LEXICON_NO_AUTO_INSTALL=1` — skip global auto-install copy.
- `LEX_SUPERVISED=1` — set by `lex run --watch` on supervised children.
- `RUST_LOG=debug` — verbose toolchain logging.

A native C ABI (`lex.h` + cdylib) is planned; until then drive `bin/lex`
and parse its stable stdout contracts above.
