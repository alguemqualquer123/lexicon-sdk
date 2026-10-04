pub fn process(input: String) -> String {
    return "processed: " + input;
}

pub fn main() -> void {
    Console::writeLine(process("hello"));
}
