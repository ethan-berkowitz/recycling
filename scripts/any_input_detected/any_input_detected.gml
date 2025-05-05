function any_input_detected() {
    // Check common keys
    for (var k = 0; k < 256; k++) {
        if (keyboard_check_pressed(k)) return true;
    }

    // Check mouse buttons (1 = left, 2 = right, 3 = middle)
    if (mouse_check_button_pressed(mb_left)) return true;
    if (mouse_check_button_pressed(mb_right)) return true;
    if (mouse_check_button_pressed(mb_middle)) return true;

    return false;
}
