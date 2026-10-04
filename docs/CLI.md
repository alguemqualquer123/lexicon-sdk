# Lexicon CLI Reference (SDK)

Generated for the SDK. Run `lex <cmd> --help` for flags.

| Command | Purpose |
|---|---|
| `lex run [file] [--watch] [--ci]` | Compile + run (hot reload with `--watch`) |
| `lex build [file] [--release]` | Compile to binary / LLVM IR |
| `lex check [file]` | Type-check without building |
| `lex test [--verbose]` | Run `@Test` suites (in-process batching) |
| `lex bench` / `lex benchmark` | Micro-benchmarks |
| `lex fmt [--check]` | Format sources |
| `lex lint [--json]` | Static lint rules |
| `lex vet [file]` | Formal verification checks |
| `lex doc [file]` | Generate documentation |
| `lex trace [file]` | Execution tracing |
| `lex profile [file]` | CPU/memory profile |
| `lex debug [file]` | Debug adapter |
| `lex generate` | Code generation (macro sites) |
| `lex mod` | Module/dependency manifest validation |
| `lex env` | Toolchain environment |
| `lex version` | Version info |
| `lex clean` | Remove build artifacts |
| `lex publish [--dry-run]` | Publish package |
| `lex new <name> [--template]` | Scaffold project (api, plugin, service, gui) |
| `lex init` | Init project in cwd |
| `lex install` / `lex uninstall` | Global PATH install |
| `lex deploy [--env]` | Cloud deploy |
| `lex ffi <lib>` | C/Rust bindings |
| `lex gui [file]` | Native GUI IDE (full builds only) |
| `lex repl` | Interactive REPL |
| `lex visualize <file>` | AST/CFG visualization |
| `lex sdk [export\|verify\|info]` | SDK packaging (this kit) |
| `lex fix [file] [--dry-run]` | Auto-migration rewrites (dot-call canon, ws trim) |
| `lex complete` / `lex lsp` / `lex ide` | Autocomplete engine, language server, editor assets |

Non-interactive use: pass `--ci` or set `CI=true` (skips prompts and HTTP serve).
