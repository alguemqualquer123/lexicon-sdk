# Lexicon SDK activator (sh/bash). Usage: . scripts/activate.sh
SDK_BIN="$(cd "$(dirname "$0")/../bin" && pwd)"
case ":$PATH:" in
  *":$SDK_BIN:"*) ;;
  *) export PATH="$SDK_BIN:$PATH" ;;
esac
echo "Lexicon SDK active ($SDK_BIN)"
lex version
