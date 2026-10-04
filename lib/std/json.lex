// Lexicon Standard Library — json.
// Minimal JSON value model plus stringify helpers.

enum JsonKind {
    Null,
    Bool,
    Number,
    Text,
    Array,
    Object,
}

struct JsonDoc {
    kind: JsonKind,
}

pub fn json_null() -> JsonDoc {
    return JsonDoc { kind: JsonKind::Null };
}

pub fn json_ok() -> String {
    return "{\"success\":true}";
}

pub fn json_error(msg: String) -> String {
    return msg;
}
