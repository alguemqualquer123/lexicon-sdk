# Lexicon Standard Library (SDK `lib/std/`)

Core kit (copy into your project):

| Module | Contents |
|---|---|
| `prelude.lex` | `Option<T>` / `Result<T,E>` enums, assert helpers |
| `collections.lex` | `IntStack` / `IntQueue` structs + constructors |
| `json.lex` | `JsonKind` enum, `JsonDoc`, stringify helpers |
| `http.lex` | `HttpMethod` enum, `Route` struct, port defaults |
| `testing.lex` | Equality/truth helpers for `@Test` suites |

Go-parity packages (loadable via `import std::<name>;`):

| Module | Go counterpart | Contents |
|---|---|---|
| `strings.lex` | `strings` | search, split/join, case, trim, rune count |
| `strconv.lex` | `strconv` | int/float/bool parse + format, Quote |
| `math.lex` | `math` | constants, roots, exp/log/pow, round, clamp |
| `sort.lex` | `sort` | sort ints/floats/strings (returns new list), search, is-sorted |
| `slices.lex` | `slices` (Go 1.21) | index/contains, clone, reverse, min/max, insert/delete |
| `errors.lex` | `errors` | `Error` struct, New/Is/Message |
| `path.lex` | `path` (POSIX) | join, split, dir/base, ext, clean, is-abs |
| `fmt.lex` | `fmt` | Print/Println/Printf, Sprint/Sprintln/Sprintf |
| `time.lex` | `time` | Time/Now/Sleep/Duration-ms, Format layouts |
| `bytes.lex` | `bytes` | byte-list compare/search/join/split/case |
| `io.lex` | `io` | Reader/Writer values, Read/ReadAll/Write/Copy |
| `bufio.lex` | `bufio` | BufReader, ReadString, line/word Scanner |
| `maps.lex` | `maps` | pair-list maps: Get/Set/Delete/Keys/Merge |
| `cmp.lex` | `cmp` | CompareInt/Float/String, Less, Or, Min/Max |
| `iter.lex` | `iter` | pull Iter + Map/Filter/Reduce/Take/Chain |
| `unicode/utf8.lex` | `unicode/utf8` | RuneCount/Decode/Encode/ValidString |
| `container/list.lex` | `container/list` | List, PushBack/Front, Pop, Remove |
| `container/heap.lex` | `container/heap` | Heap with lambda `less`, Push/Pop/Peek |
| `container/ring.lex` | `container/ring` | Ring cursor: Next/Prev/Set/Do |
| `os.lex` | `os` | Args/env/files/dirs via native builtins |
| `sync.lex` | `sync` | Mutex/RWMutex/WaitGroup/Once (coop. no-op) |
| `context.lex` | `context` | Background/WithCancel/Timeout/Value/Done |
| `log.lex` | `log` | default logger, prefix/flags, Fatal/Panic |
| `path/filepath.lex` | `path/filepath` | OS separators, Walk, glob Match |
| `encoding/json.lex` | `encoding/json` | Marshal/Unmarshal/Valid (native) |
| `encoding/base64.lex` | `encoding/base64` | Std/URL/Raw encode + Decode |
| `encoding/hex.lex` | `encoding/hex` | lowercase hex Encode/Decode |
| `encoding/csv.lex` | `encoding/csv` | RFC-4180 ReadAll/WriteAll |
| `html.lex` | `html` | EscapeString/UnescapeString |
| `regexp.lex` | `regexp` | Match/Find/ReplaceAll/Split (subset) |
| `hash/fnv.lex` | `hash/fnv` | FNV-1a 32/64 one-shot + streaming |
| `hash/crc32.lex` | `hash/crc32` | IEEE Checksum + streaming |
| `hash/adler32.lex` | `hash/adler32` | Checksum + streaming |
| `rand.lex` | `math/rand` | Seed/Intn/Float64/Shuffle/Choice |
| `crypto/subtle.lex` | `crypto/subtle` | ConstantTimeCompare/Select |
| `os/exec.lex` | `os/exec` | Command/Output/Run/LookPath (native spawn) |
| `sync/atomic.lex` | `sync/atomic` | Int64 cells: Load/Add/Swap/CAS (native) |
| `net/url.lex` | `net/url` | Parse/StringOf/QueryEscape/EncodeQuery |
| `slog.lex` | `slog` | levels, With attrs, default Dbg/Inf |
| `flag.lex` | `flag` | String/Int/Bool/Parse/Getters/Usage |
| `mime.lex` | `mime` | ParseMediaType/Format/TypeByExtension |
| `encoding/base32.lex` | `encoding/base32` | Std/Hex Encode + Decode |
| `math/bits.lex` | `math/bits` | OnesCount/zeros/rotate/reverse |
| `crypto/sha256.lex` | `crypto/sha256` | Sum/SumBytes (FIPS vectors) |
| `crypto/hmac.lex` | `crypto/hmac` | HMAC-SHA256 (RFC 4231 vector) |
| `unsafe.lex` | `unsafe` | Sizeof/Alignof/IsNil (safe subset) |
| `runtime.lex` | `runtime` | GOOS/GOARCH/NumCPU/Version (native) |
| `net/mail.lex` | `net/mail` | ParseAddress/ParseAddressList |
| `net/textproto.lex` | `net/textproto` | ReadMIMEHeader/CanonicalKey/Get |
| `mime/multipart.lex` | `mime/multipart` | Parse/HeaderGet/FileName |
| `encoding/pem.lex` | `encoding/pem` | Decode/Encode blocks |
| `encoding/ascii85.lex` | `encoding/ascii85` | z/y shortcuts Encode/Decode |
| `image/color.lex` | `image/color` | RGBA/NRGBA/Gray/ParseHex/ToHex |
| `archive/tar.lex` | `archive/tar` | ustar AppendFile/Next |
| `hash/crc64.lex` | `hash/crc64` | ECMA Checksum + streaming |
| `hash/maphash.lex` | `hash/maphash` | Seeded String/Bytes/Int |
| `os/signal.lex` | `os/signal` | constants + Notify/Stop/Wanted |
| `os/user.lex` | `os/user` | Current/Lookup via env |
| `expvar.lex` | `expvar` | NewInt/Add/Set/Get/Render JSON |
| `unicode/utf16.lex` | `unicode/utf16` | surrogate Encode/Decode |
| `crypto/md5.lex` | `crypto/md5` | Sum/SumBytes (RFC 1321 vectors) |
| `crypto/sha1.lex` | `crypto/sha1` | Sum/SumBytes (FIPS 180-1 vectors) |
| `crypto/rc4.lex` | `crypto/rc4` | Keystream/Cipher/Hex (legacy) |
| `math/cmplx.lex` | `math/cmplx` | Complex, Sqrt/Exp/Log/Pow/Sin/Cos/Tan |
| `net/netip.lex` | `net/netip` | ParseIP/ToString/Prefix+Contains/AddrPort |
| `net/http.lex` | `net/http` | Get/Post/ReadBody (native fetch) |
| `mime/quotedprintable.lex` | `mime/quotedprintable` | Encode/Decode + soft breaks |
| `sync/pool.lex` | `sync/pool` | New/Put/Get (LIFO, value-semantic) |
| `text/tabwriter.lex` | `text/tabwriter` | New/Write/Flush column padding |
| `encoding/binary.lex` | `encoding/binary` | Put/Be/Le 16/32/64, WriteBE32All |
| `native/*.lex` (18 files) | IDE stubs | Ctrl+Click targets for native builtins (`Math::sqrt` → `native/math.lex`, `Window::create` → `native/window.lex`); never import (bodies abort) |

All files pass `lex check`. Cross-package calls must stay package-qualified
(`strings::Index`, not bare `Index`): the import tables are keyed by simple
name, so an unqualified call from your own file resolves to the first module
that loaded that name. Inside a package, its own functions/structs/consts
always win over another package's same-named ones.
