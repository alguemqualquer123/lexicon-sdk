// Janela nativa no motor grafico do Lex (eframe + wgpu).
// Rodar:  lex run src/main.lex
// CI:     lex run --ci src/main.lex   (fecha sozinho depois de ~1s)

pub fn main() -> void {
    let win = Window::create(Title { title: "minha-janela", width: 640, height: 400 });
    let x = 60.0;
    let vx = 4.0;

    while !Window::shouldClose(win) {
        if Input::keyDown(win, "left") {
            vx = 0.0 - Math::abs(vx);
        }
        if Input::keyDown(win, "right") {
            vx = Math::abs(vx);
        }
        x = x + vx;
        if x < 60.0 || x > 580.0 {
            vx = 0.0 - vx;
        }
        Canvas::clear(win, 0.07, 0.06, 0.13, 1.0);
        Canvas::fillCircle(win, x, 200.0, 28.0, 0.49, 0.83, 1.0, 1.0);
        Canvas::text(win, 20.0, 20.0, Text { s: "setas <- ->", size: 18.0 }, 1.0, 1.0, 1.0, 1.0);
        Window::present(win);
    }

    Window::close(win);
}
