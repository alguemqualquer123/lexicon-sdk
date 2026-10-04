# Lexicon SDK

Distribuição pública do **Lexicon / LexiconLang**: o kit autocontido da
ferramenta (`lex`), a biblioteca padrão escrita em Lex, exemplos, templates,
documentação e o `zip` final de cada versão.

O fonte do compilador (o workspace Rust da linguagem) **não** fica aqui — ele
vive no repositório da linguagem. Este repositório é só o SDK: o que o
usuário baixa, instala e lê.

## Instalação

**Windows (PowerShell):**

```powershell
powershell -ExecutionPolicy Bypass -Command "iwr -useb https://github.com/alguemqualquer123/lexicon-sdk/releases/latest/download/install.ps1 | iex"
```

**Linux / macOS:**

```sh
curl -fsSL https://github.com/alguemqualquer123/lexicon-sdk/releases/latest/download/install.sh | sh
```

Ou sem instalador: baixe `lex-sdk-<versão>-windows-x64.zip` em
[Releases](https://github.com/alguemqualquer123/lexicon-sdk/releases),
descompacte e:

```powershell
. scripts/activate.ps1   # ou:  . scripts/activate.sh
lex version
lex run examples/hello.lex
```

`lex install` copia o binário para `~/.lexicon/bin`, cria os launchers
(`lex-run`, `lex-build`, …), ajusta o `PATH` e materializa o SDK em
`~/.lexicon/sdk`. Não precisa de administrador.

## O que tem aqui

| Caminho | Conteúdo |
|---|---|
| `bin/` | `lex.exe` (compilador + toolchain num binário só) e os launchers `lex-<comando>` |
| `lib/std/` | fonte da biblioteca padrão em Lex — 89 pacotes, todos passando em `lex check` |
| `examples/` | amostras executáveis (`lex run examples/hello.lex`) |
| `templates/` | iniciadores do `lex new` (`default`, `api`, `service`, `plugin`, `gui`) |
| `docs/` | referência da CLI (`CLI.md`), da stdlib (`STDLIB.md`) e do contrato de embed (`EMBEDDING.md`) |
| `scripts/` | `activate.ps1` / `activate.sh` — colocam `bin/` no `PATH` |
| `install.ps1` / `install.sh` | instaladores que buscam o asset mais recente deste repo |
| `dist/` | `lex-sdk-<versão>-windows-x64.zip` + `checksums.txt` (SHA-256) |
| `VERSION` | versão do kit, lida de `lex version` |

## Artefatos de release

Cada tag `vX.Y.Z` publica como assets:

- `lex-sdk-<versão>-windows-x64.zip` — SDK completo (binário + shims + stdlib + exemplos + templates + docs + instaladores).
- `lex-<versão>-windows-x64.zip` — só o binário; o SDK se materializa no primeiro `lex install`.
- `install.ps1`, `install.sh`, `lexicon-super-<versão>.vsix`, `checksums.txt`.

Os dois zips são o mesmo `lex.exe`: o binário embute a stdlib, os templates e
os exemplos, então o zip "só linguagem" também instala o SDK.

## Como o kit é gerado

O kit é exportado pelo próprio binário, e é isso que vira o zip:

```sh
lex sdk export --out lex-sdk-<versão>-windows-x64
lex sdk verify --out lex-sdk-<versão>-windows-x64
```

`lex sdk verify` confere a integridade do kit exportado; um `zip` só sobe para
a release depois que ele passa.

## Licença

MIT — ver [LICENSE-MIT.md](LICENSE-MIT.md).
