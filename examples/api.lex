// SDK example: api.lex — run with `lex run api.lex`, then open
// http://localhost:3000/ (real axum server with CORS + JSON envelopes).
@Get("/")
pub fn hello() -> String {
    return "Hello from Lexicon REST API!";
}

@Get("/health")
pub fn health() -> String {
    return "ok";
}

pub fn main() -> void {
    Http::serve("0.0.0.0:3000");
}
