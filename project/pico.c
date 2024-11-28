#include "pico/stdlib.h"

#define OUTPUT_PIN 25
#define DELAY 1000

#define HIGH 1
#define LOW 0

int init(void){
    gpio_init(OUTPUT_PIN);
    gpio_set_dir(OUTPUT_PIN, GPIO_OUT);
    return 0;
}

int main(void){
    init();

    while(true){

        gpio_put(OUTPUT_PIN, HIGH);
        sleep_ms(DELAY);
        gpio_put(OUTPUT_PIN, LOW);
        sleep_ms(DELAY);
    }

    return 0; // this line should never be reached
}
