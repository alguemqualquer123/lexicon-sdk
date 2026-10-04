// Lexicon Standard Library — collections.
// Fixed-capacity Stack and Queue sketches over i32.

struct IntStack {
    top: i32,
}

struct IntQueue {
    head: i32,
    tail: i32,
}

pub fn stack_new() -> IntStack {
    return IntStack { top: 0 };
}

pub fn stack_empty(s: IntStack) -> bool {
    return s.top == 0;
}

pub fn queue_new() -> IntQueue {
    return IntQueue { head: 0, tail: 0 };
}

pub fn queue_empty(q: IntQueue) -> bool {
    return q.head == q.tail;
}
