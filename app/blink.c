#include <stdio.h>
#include "pico/stdlib.h"

int main() {

    const uint led_pin = 25;

    // Initialize LED pin
    gpio_init(led_pin);
    gpio_set_dir(led_pin, GPIO_OUT);

    // Initialize chosen serial port
    stdio_init_all(); // this will interfer with debugger, comment out when using debugger

    // Loop forever
    while (true) {

        // Blink LED
        printf("Blinkinggg!\r\n"); // this will interfer with debugger, comment out when using debugger
        gpio_put(led_pin, true);
        sleep_ms(3000);
        gpio_put(led_pin, false);
        sleep_ms(3000);
    }
}