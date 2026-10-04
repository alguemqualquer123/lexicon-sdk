// Lexicon Standard Library — prelude.
// Core sum types and assertion helpers. Import by copying into your project
// (a module loader is on the roadmap).

enum Option<T> {
    Some,
    None,
}

enum Result<T, E> {
    Ok,
    Err,
}

pub fn assert_true(cond: bool) -> bool {
    return cond;
}

pub fn assert_eq_int(a: i32, b: i32) -> bool {
    return a == b;
}

pub fn identity_int(x: i32) -> i32 {
    return x;
}
