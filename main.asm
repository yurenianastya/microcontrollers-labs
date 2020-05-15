;
; AssemblerApplication1.asm
;
; Created: 5/15/2020 2:40:40 AM
; Author: Nsty Yurenia
;

.NOLIST                  ; Don't list the following in the list file
.include "m328pdef.inc"  ; Import the file
.LIST                    ; Switch list on again

.def temp = r20
.def delay1 = r17
.def delay2 = r18
.def delayv = r19

rjmp main

delay:
  clr delay1
  clr delay2
  ldi delayv, 40

delay_loop:
  dec delay2
  brne delay_loop
  dec delay1
  brne delay_loop
  dec delayv
  brne delay_loop
  ret

main:
  clr r20 
  ldi temp, 0b00000000
  out DDRB, temp
  out PORTB, temp
  out DDRD, temp
  out PORTD, temp

loop:
  sbic PinB, 3 
  rcall algo1

  sbic PinB, 4
  rcall algo2

    rjmp loop

algo1:
  rcall beep

  sbi PORTD, 2
  sbi DDRD, 2

  rcall delay

  cbi PORTD, 2
  cbi DDRD, 2

  rcall delay

  sbi PORTD, 3
  sbi DDRD, 3

  rcall delay

  cbi PORTD, 3
  cbi DDRD, 3

  rcall delay

  sbi PORTD, 4
  sbi DDRD, 4

  rcall delay

  cbi PORTD, 4
  cbi DDRD, 4

  rcall delay

  sbi PORTD, 5
  sbi DDRD, 5

  rcall delay

  cbi PORTD, 5
  cbi DDRD, 5

  rcall delay

  sbi PORTD, 6
  sbi DDRD, 6

  rcall delay

  cbi PORTD, 6
  cbi DDRD, 6

  rcall delay

  sbi PORTD, 7
  sbi DDRD, 7

  rcall delay

  cbi PORTD, 7
  cbi DDRD, 7

  rcall delay

  sbi PORTB, 0
  sbi DDRB, 0

  rcall delay

  cbi PORTB, 0
  cbi DDRB, 0

  rcall delay

  sbi PORTB, 1
  sbi DDRB, 1

  rcall delay

  cbi PORTB, 1
  cbi DDRB, 1

  ret

algo2:
  rcall beep

  sbi PORTB, 1
  sbi DDRB, 1

  rcall delay

  cbi PORTB, 1
  cbi DDRB, 1

  rcall delay

  sbi PORTB, 0
  sbi DDRB, 0

  rcall delay

  cbi PORTB, 0
  cbi DDRB, 0

  rcall delay

  sbi PORTD, 7
  sbi DDRD, 7

  rcall delay

  cbi PORTD, 7
  cbi DDRD, 7

  rcall delay
  
  sbi PORTD, 6
  sbi DDRD, 6

  rcall delay

  cbi PORTD, 6
  cbi DDRD, 6

  rcall delay

  sbi PORTD, 5
  sbi DDRD, 5

  rcall delay

  cbi PORTD, 5
  cbi DDRD, 5

  rcall delay

  sbi PORTD, 4
  sbi DDRD, 4

  rcall delay

  cbi PORTD, 4 
  cbi DDRD, 4

  rcall delay

  sbi PORTD, 3
  sbi DDRD, 3

  rcall delay

  cbi PORTD, 3 
  cbi DDRD, 3

  rcall delay

  sbi PORTD, 2
  sbi DDRD, 2

  rcall delay

  cbi PORTD, 2 
  cbi DDRD, 2
 
  ret

beep:
  sbi PORTB, 2
  sbi DDRB, 2
  rcall delay
  cbi PORTB, 2
  cbi DDRB, 2
  ret
