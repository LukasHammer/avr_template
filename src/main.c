/*
 * Author: Lukas Hammer
 * Date: December 2025
 * Description: Template avr program to toggle PC0
 */

#include <avr/io.h>
#include <util/delay.h>

#define TOGGLE_BIT(port, bit) ((port) ^= (1 << (bit)))

void init_registers(void)
{
    DDRC |= (1 << PC0); // Set PC0 as output
}

int main(void)
{
    init_registers();

    while (1)
    {
        TOGGLE_BIT(PORTC, PC0); // Toggle PC0
        _delay_ms(250);         // Delay for 250 milliseconds
    }

    return 0;
}