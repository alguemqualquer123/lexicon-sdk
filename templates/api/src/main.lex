@Get("/")
pub fn hello() -> String {
    return "Hello from Lexicon REST API!";
}

pub fn main() -> void {
    Http::serve("0.0.0.0:3000");
}
