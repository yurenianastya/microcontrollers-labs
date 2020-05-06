00000000 <__vectors>:
   0:	0c 94 62 00 	jmp	0xc4	; 0xc4 <__ctors_end>
   4:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
   8:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
   c:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  10:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  14:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  18:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  1c:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  20:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  24:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  28:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  2c:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  30:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  34:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  38:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  3c:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  40:	0c 94 96 01 	jmp	0x32c	; 0x32c <__vector_16>
  44:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  48:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  4c:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  50:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  54:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  58:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  5c:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  60:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>
  64:	0c 94 7f 00 	jmp	0xfe	; 0xfe <__bad_interrupt>

00000068 <__trampolines_end>:
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	24 00       	.word	0x0024	; ????
  6e:	27 00       	.word	0x0027	; ????
  70:	2a 00       	.word	0x002a	; ????

00000072 <port_to_output_PGM>:
  72:	00 00 00 00 25 00 28 00 2b 00                       ....%.(.+.

0000007c <port_to_input_PGM>:
  7c:	00 00 00 00 23 00 26 00 29 00                       ....#.&.).

00000086 <digital_pin_to_port_PGM>:
  86:	04 04 04 04 04 04 04 04 02 02 02 02 02 02 03 03     ................
  96:	03 03 03 03                                         ....

0000009a <digital_pin_to_bit_mask_PGM>:
  9a:	01 02 04 08 10 20 40 80 01 02 04 08 10 20 01 02     ..... @...... ..
  aa:	04 08 10 20                                         ... 

000000ae <digital_pin_to_timer_PGM>:
  ae:	00 00 00 08 00 02 01 00 00 03 04 07 00 00 00 00     ................
  be:	00 00 00 00                                         ....

000000c2 <__ctors_start>:
  c2:	5c 02       	muls	r21, r28

000000c4 <__ctors_end>:
  c4:	11 24       	eor	r1, r1
  c6:	1f be       	out	0x3f, r1	; 63
  c8:	cf ef       	ldi	r28, 0xFF	; 255
  ca:	d8 e0       	ldi	r29, 0x08	; 8
  cc:	de bf       	out	0x3e, r29	; 62
  ce:	cd bf       	out	0x3d, r28	; 61

000000d0 <__do_clear_bss>:
  d0:	21 e0       	ldi	r18, 0x01	; 1
  d2:	a0 e0       	ldi	r26, 0x00	; 0
  d4:	b1 e0       	ldi	r27, 0x01	; 1
  d6:	01 c0       	rjmp	.+2      	; 0xda <.do_clear_bss_start>

000000d8 <.do_clear_bss_loop>:
  d8:	1d 92       	st	X+, r1

000000da <.do_clear_bss_start>:
  da:	a9 31       	cpi	r26, 0x19	; 25
  dc:	b2 07       	cpc	r27, r18
  de:	e1 f7       	brne	.-8      	; 0xd8 <.do_clear_bss_loop>

000000e0 <__do_global_ctors>:
  e0:	10 e0       	ldi	r17, 0x00	; 0
  e2:	c2 e6       	ldi	r28, 0x62	; 98
  e4:	d0 e0       	ldi	r29, 0x00	; 0
  e6:	04 c0       	rjmp	.+8      	; 0xf0 <__do_global_ctors+0x10>
  e8:	21 97       	sbiw	r28, 0x01	; 1
  ea:	fe 01       	movw	r30, r28
  ec:	0e 94 7f 02 	call	0x4fe	; 0x4fe <__tablejump2__>
  f0:	c1 36       	cpi	r28, 0x61	; 97
  f2:	d1 07       	cpc	r29, r17
  f4:	c9 f7       	brne	.-14     	; 0xe8 <__do_global_ctors+0x8>
  f6:	0e 94 e0 01 	call	0x3c0	; 0x3c0 <main>
  fa:	0c 94 85 02 	jmp	0x50a	; 0x50a <_exit>

000000fe <__bad_interrupt>:
  fe:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000102 <turnOffPWM>:
//
//static inline void turnOffPWM(uint8_t timer) __attribute__ ((always_inline));
//static inline void turnOffPWM(uint8_t timer)
static void turnOffPWM(uint8_t timer)
{
	switch (timer)
 102:	83 30       	cpi	r24, 0x03	; 3
 104:	81 f0       	breq	.+32     	; 0x126 <turnOffPWM+0x24>
 106:	28 f4       	brcc	.+10     	; 0x112 <turnOffPWM+0x10>
 108:	81 30       	cpi	r24, 0x01	; 1
 10a:	99 f0       	breq	.+38     	; 0x132 <turnOffPWM+0x30>
 10c:	82 30       	cpi	r24, 0x02	; 2
 10e:	a9 f0       	breq	.+42     	; 0x13a <turnOffPWM+0x38>
 110:	08 95       	ret
 112:	87 30       	cpi	r24, 0x07	; 7
 114:	a9 f0       	breq	.+42     	; 0x140 <turnOffPWM+0x3e>
 116:	88 30       	cpi	r24, 0x08	; 8
 118:	c9 f0       	breq	.+50     	; 0x14c <turnOffPWM+0x4a>
 11a:	84 30       	cpi	r24, 0x04	; 4
 11c:	b1 f4       	brne	.+44     	; 0x14a <turnOffPWM+0x48>
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
 11e:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 122:	8f 7d       	andi	r24, 0xDF	; 223
 124:	03 c0       	rjmp	.+6      	; 0x12c <turnOffPWM+0x2a>
static void turnOffPWM(uint8_t timer)
{
	switch (timer)
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
 126:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 12a:	8f 77       	andi	r24, 0x7F	; 127
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
 12c:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 130:	08 95       	ret
		#if defined(TCCR2) && defined(COM21)
		case  TIMER2:   cbi(TCCR2, COM21);      break;
		#endif
		
		#if defined(TCCR0A) && defined(COM0A1)
		case  TIMER0A:  cbi(TCCR0A, COM0A1);    break;
 132:	84 b5       	in	r24, 0x24	; 36
 134:	8f 77       	andi	r24, 0x7F	; 127
		#endif
		
		#if defined(TCCR0A) && defined(COM0B1)
		case  TIMER0B:  cbi(TCCR0A, COM0B1);    break;
 136:	84 bd       	out	0x24, r24	; 36
 138:	08 95       	ret
 13a:	84 b5       	in	r24, 0x24	; 36
 13c:	8f 7d       	andi	r24, 0xDF	; 223
 13e:	fb cf       	rjmp	.-10     	; 0x136 <turnOffPWM+0x34>
		#endif
		#if defined(TCCR2A) && defined(COM2A1)
		case  TIMER2A:  cbi(TCCR2A, COM2A1);    break;
 140:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 144:	8f 77       	andi	r24, 0x7F	; 127
		#endif
		#if defined(TCCR2A) && defined(COM2B1)
		case  TIMER2B:  cbi(TCCR2A, COM2B1);    break;
 146:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
		case  TIMER5A:  cbi(TCCR5A, COM5A1);    break;
		case  TIMER5B:  cbi(TCCR5A, COM5B1);    break;
		case  TIMER5C:  cbi(TCCR5A, COM5C1);    break;
		#endif
	}
}
 14a:	08 95       	ret
		#endif
		#if defined(TCCR2A) && defined(COM2A1)
		case  TIMER2A:  cbi(TCCR2A, COM2A1);    break;
		#endif
		#if defined(TCCR2A) && defined(COM2B1)
		case  TIMER2B:  cbi(TCCR2A, COM2B1);    break;
 14c:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 150:	8f 7d       	andi	r24, 0xDF	; 223
 152:	f9 cf       	rjmp	.-14     	; 0x146 <turnOffPWM+0x44>

00000154 <digitalRead>:

	SREG = oldSREG;
}

int digitalRead(uint8_t pin)
{
 154:	cf 93       	push	r28
 156:	df 93       	push	r29
	uint8_t timer = digitalPinToTimer(pin);
 158:	28 2f       	mov	r18, r24
 15a:	30 e0       	ldi	r19, 0x00	; 0
 15c:	f9 01       	movw	r30, r18
 15e:	e2 55       	subi	r30, 0x52	; 82
 160:	ff 4f       	sbci	r31, 0xFF	; 255
 162:	84 91       	lpm	r24, Z
	uint8_t bit = digitalPinToBitMask(pin);
 164:	f9 01       	movw	r30, r18
 166:	e6 56       	subi	r30, 0x66	; 102
 168:	ff 4f       	sbci	r31, 0xFF	; 255
 16a:	d4 91       	lpm	r29, Z
	uint8_t port = digitalPinToPort(pin);
 16c:	f9 01       	movw	r30, r18
 16e:	ea 57       	subi	r30, 0x7A	; 122
 170:	ff 4f       	sbci	r31, 0xFF	; 255
 172:	c4 91       	lpm	r28, Z

	if (port == NOT_A_PIN) return LOW;
 174:	cc 23       	and	r28, r28
 176:	a1 f0       	breq	.+40     	; 0x1a0 <digitalRead+0x4c>

	// If the pin that support PWM output, we need to turn it off
	// before getting a digital reading.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);
 178:	81 11       	cpse	r24, r1
 17a:	0e 94 81 00 	call	0x102	; 0x102 <turnOffPWM>

	if (*portInputRegister(port) & bit) return HIGH;
 17e:	ec 2f       	mov	r30, r28
 180:	f0 e0       	ldi	r31, 0x00	; 0
 182:	ee 0f       	add	r30, r30
 184:	ff 1f       	adc	r31, r31
 186:	e4 58       	subi	r30, 0x84	; 132
 188:	ff 4f       	sbci	r31, 0xFF	; 255
 18a:	a5 91       	lpm	r26, Z+
 18c:	b4 91       	lpm	r27, Z
 18e:	ec 91       	ld	r30, X
 190:	ed 23       	and	r30, r29
 192:	81 e0       	ldi	r24, 0x01	; 1
 194:	90 e0       	ldi	r25, 0x00	; 0
 196:	09 f4       	brne	.+2      	; 0x19a <digitalRead+0x46>
 198:	80 e0       	ldi	r24, 0x00	; 0
	return LOW;
}
 19a:	df 91       	pop	r29
 19c:	cf 91       	pop	r28
 19e:	08 95       	ret
{
	uint8_t timer = digitalPinToTimer(pin);
	uint8_t bit = digitalPinToBitMask(pin);
	uint8_t port = digitalPinToPort(pin);

	if (port == NOT_A_PIN) return LOW;
 1a0:	80 e0       	ldi	r24, 0x00	; 0
 1a2:	90 e0       	ldi	r25, 0x00	; 0
 1a4:	fa cf       	rjmp	.-12     	; 0x19a <digitalRead+0x46>

000001a6 <digitalWrite>:
		#endif
	}
}

void digitalWrite(uint8_t pin, uint8_t val)
{
 1a6:	1f 93       	push	r17
 1a8:	cf 93       	push	r28
 1aa:	df 93       	push	r29
	uint8_t timer = digitalPinToTimer(pin);
 1ac:	28 2f       	mov	r18, r24
 1ae:	30 e0       	ldi	r19, 0x00	; 0
 1b0:	f9 01       	movw	r30, r18
 1b2:	e2 55       	subi	r30, 0x52	; 82
 1b4:	ff 4f       	sbci	r31, 0xFF	; 255
 1b6:	84 91       	lpm	r24, Z
	uint8_t bit = digitalPinToBitMask(pin);
 1b8:	f9 01       	movw	r30, r18
 1ba:	e6 56       	subi	r30, 0x66	; 102
 1bc:	ff 4f       	sbci	r31, 0xFF	; 255
 1be:	d4 91       	lpm	r29, Z
	uint8_t port = digitalPinToPort(pin);
 1c0:	f9 01       	movw	r30, r18
 1c2:	ea 57       	subi	r30, 0x7A	; 122
 1c4:	ff 4f       	sbci	r31, 0xFF	; 255
 1c6:	c4 91       	lpm	r28, Z
	volatile uint8_t *out;

	if (port == NOT_A_PIN) return;
 1c8:	cc 23       	and	r28, r28
 1ca:	a9 f0       	breq	.+42     	; 0x1f6 <digitalWrite+0x50>
 1cc:	16 2f       	mov	r17, r22

	// If the pin that support PWM output, we need to turn it off
	// before doing a digital write.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);
 1ce:	81 11       	cpse	r24, r1
 1d0:	0e 94 81 00 	call	0x102	; 0x102 <turnOffPWM>

	out = portOutputRegister(port);
 1d4:	ec 2f       	mov	r30, r28
 1d6:	f0 e0       	ldi	r31, 0x00	; 0
 1d8:	ee 0f       	add	r30, r30
 1da:	ff 1f       	adc	r31, r31
 1dc:	ee 58       	subi	r30, 0x8E	; 142
 1de:	ff 4f       	sbci	r31, 0xFF	; 255
 1e0:	a5 91       	lpm	r26, Z+
 1e2:	b4 91       	lpm	r27, Z

	uint8_t oldSREG = SREG;
 1e4:	8f b7       	in	r24, 0x3f	; 63
	cli();
 1e6:	f8 94       	cli

	if (val == LOW) {
		*out &= ~bit;
 1e8:	ec 91       	ld	r30, X
	out = portOutputRegister(port);

	uint8_t oldSREG = SREG;
	cli();

	if (val == LOW) {
 1ea:	11 11       	cpse	r17, r1
 1ec:	08 c0       	rjmp	.+16     	; 0x1fe <digitalWrite+0x58>
		*out &= ~bit;
 1ee:	d0 95       	com	r29
 1f0:	de 23       	and	r29, r30
	} else {
		*out |= bit;
 1f2:	dc 93       	st	X, r29
	}

	SREG = oldSREG;
 1f4:	8f bf       	out	0x3f, r24	; 63
}
 1f6:	df 91       	pop	r29
 1f8:	cf 91       	pop	r28
 1fa:	1f 91       	pop	r17
 1fc:	08 95       	ret
	cli();

	if (val == LOW) {
		*out &= ~bit;
	} else {
		*out |= bit;
 1fe:	de 2b       	or	r29, r30
 200:	f8 cf       	rjmp	.-16     	; 0x1f2 <digitalWrite+0x4c>

00000202 <pinMode>:
#define ARDUINO_MAIN
#include "wiring_private.h"
#include "pins_arduino.h"

void pinMode(uint8_t pin, uint8_t mode)
{
 202:	cf 93       	push	r28
 204:	df 93       	push	r29
	uint8_t bit = digitalPinToBitMask(pin);
 206:	90 e0       	ldi	r25, 0x00	; 0
 208:	fc 01       	movw	r30, r24
 20a:	e6 56       	subi	r30, 0x66	; 102
 20c:	ff 4f       	sbci	r31, 0xFF	; 255
 20e:	24 91       	lpm	r18, Z
	uint8_t port = digitalPinToPort(pin);
 210:	8a 57       	subi	r24, 0x7A	; 122
 212:	9f 4f       	sbci	r25, 0xFF	; 255
 214:	fc 01       	movw	r30, r24
 216:	84 91       	lpm	r24, Z
	volatile uint8_t *reg, *out;

	if (port == NOT_A_PIN) return;
 218:	88 23       	and	r24, r24
 21a:	d1 f0       	breq	.+52     	; 0x250 <pinMode+0x4e>

	// JWS: can I let the optimizer do this?
	reg = portModeRegister(port);
 21c:	90 e0       	ldi	r25, 0x00	; 0
 21e:	88 0f       	add	r24, r24
 220:	99 1f       	adc	r25, r25
 222:	fc 01       	movw	r30, r24
 224:	e8 59       	subi	r30, 0x98	; 152
 226:	ff 4f       	sbci	r31, 0xFF	; 255
 228:	a5 91       	lpm	r26, Z+
 22a:	b4 91       	lpm	r27, Z
	out = portOutputRegister(port);
 22c:	fc 01       	movw	r30, r24
 22e:	ee 58       	subi	r30, 0x8E	; 142
 230:	ff 4f       	sbci	r31, 0xFF	; 255
 232:	c5 91       	lpm	r28, Z+
 234:	d4 91       	lpm	r29, Z

	if (mode == INPUT) { 
 236:	61 11       	cpse	r22, r1
 238:	0e c0       	rjmp	.+28     	; 0x256 <pinMode+0x54>
		uint8_t oldSREG = SREG;
 23a:	9f b7       	in	r25, 0x3f	; 63
                cli();
 23c:	f8 94       	cli
		*reg &= ~bit;
 23e:	8c 91       	ld	r24, X
 240:	e2 2f       	mov	r30, r18
 242:	e0 95       	com	r30
 244:	8e 23       	and	r24, r30
 246:	8c 93       	st	X, r24
		*out &= ~bit;
 248:	28 81       	ld	r18, Y
 24a:	e2 23       	and	r30, r18
 24c:	e8 83       	st	Y, r30
		SREG = oldSREG;
 24e:	9f bf       	out	0x3f, r25	; 63
		uint8_t oldSREG = SREG;
                cli();
		*reg |= bit;
		SREG = oldSREG;
	}
}
 250:	df 91       	pop	r29
 252:	cf 91       	pop	r28
 254:	08 95       	ret
                cli();
		*reg &= ~bit;
		*out |= bit;
		SREG = oldSREG;
	} else {
		uint8_t oldSREG = SREG;
 256:	8f b7       	in	r24, 0x3f	; 63
                cli();
 258:	f8 94       	cli
		*reg |= bit;
 25a:	ec 91       	ld	r30, X
 25c:	e2 2b       	or	r30, r18
 25e:	ec 93       	st	X, r30
		SREG = oldSREG;
 260:	8f bf       	out	0x3f, r24	; 63
 262:	f6 cf       	rjmp	.-20     	; 0x250 <pinMode+0x4e>

00000264 <micros>:
	return m;
}

unsigned long micros() {
	unsigned long m;
	uint8_t oldSREG = SREG, t;
 264:	3f b7       	in	r19, 0x3f	; 63
	
	cli();
 266:	f8 94       	cli
	m = timer0_overflow_count;
 268:	80 91 05 01 	lds	r24, 0x0105	; 0x800105 <timer0_overflow_count>
 26c:	90 91 06 01 	lds	r25, 0x0106	; 0x800106 <timer0_overflow_count+0x1>
 270:	a0 91 07 01 	lds	r26, 0x0107	; 0x800107 <timer0_overflow_count+0x2>
 274:	b0 91 08 01 	lds	r27, 0x0108	; 0x800108 <timer0_overflow_count+0x3>
#if defined(TCNT0)
	t = TCNT0;
 278:	26 b5       	in	r18, 0x26	; 38
#else
	#error TIMER 0 not defined
#endif

#ifdef TIFR0
	if ((TIFR0 & _BV(TOV0)) && (t < 255))
 27a:	a8 9b       	sbis	0x15, 0	; 21
 27c:	05 c0       	rjmp	.+10     	; 0x288 <micros+0x24>
 27e:	2f 3f       	cpi	r18, 0xFF	; 255
 280:	19 f0       	breq	.+6      	; 0x288 <micros+0x24>
		m++;
 282:	01 96       	adiw	r24, 0x01	; 1
 284:	a1 1d       	adc	r26, r1
 286:	b1 1d       	adc	r27, r1
#else
	if ((TIFR & _BV(TOV0)) && (t < 255))
		m++;
#endif

	SREG = oldSREG;
 288:	3f bf       	out	0x3f, r19	; 63
	
	return ((m << 8) + t) * (64 / clockCyclesPerMicrosecond());
 28a:	ba 2f       	mov	r27, r26
 28c:	a9 2f       	mov	r26, r25
 28e:	98 2f       	mov	r25, r24
 290:	88 27       	eor	r24, r24
 292:	bc 01       	movw	r22, r24
 294:	cd 01       	movw	r24, r26
 296:	62 0f       	add	r22, r18
 298:	71 1d       	adc	r23, r1
 29a:	81 1d       	adc	r24, r1
 29c:	91 1d       	adc	r25, r1
 29e:	42 e0       	ldi	r20, 0x02	; 2
 2a0:	66 0f       	add	r22, r22
 2a2:	77 1f       	adc	r23, r23
 2a4:	88 1f       	adc	r24, r24
 2a6:	99 1f       	adc	r25, r25
 2a8:	4a 95       	dec	r20
 2aa:	d1 f7       	brne	.-12     	; 0x2a0 <micros+0x3c>
}
 2ac:	08 95       	ret

000002ae <_Z5blinki>:
  for (int i = 0; i < array_length; i++) {
    pinMode(led_array[i], OUTPUT);
  }
}

void blink(int led) {
 2ae:	8f 92       	push	r8
 2b0:	9f 92       	push	r9
 2b2:	af 92       	push	r10
 2b4:	bf 92       	push	r11
 2b6:	cf 92       	push	r12
 2b8:	df 92       	push	r13
 2ba:	ef 92       	push	r14
 2bc:	ff 92       	push	r15
 2be:	cf 93       	push	r28
 2c0:	c8 2f       	mov	r28, r24
  digitalWrite(led, HIGH);
 2c2:	61 e0       	ldi	r22, 0x01	; 1
 2c4:	0e 94 d3 00 	call	0x1a6	; 0x1a6 <digitalWrite>

void delay(unsigned long ms)
{
	uint32_t start = micros();
 2c8:	0e 94 32 01 	call	0x264	; 0x264 <micros>
 2cc:	4b 01       	movw	r8, r22
 2ce:	5c 01       	movw	r10, r24
 2d0:	8e ee       	ldi	r24, 0xEE	; 238
 2d2:	c8 2e       	mov	r12, r24
 2d4:	82 e0       	ldi	r24, 0x02	; 2
 2d6:	d8 2e       	mov	r13, r24
 2d8:	e1 2c       	mov	r14, r1
 2da:	f1 2c       	mov	r15, r1

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
 2dc:	0e 94 32 01 	call	0x264	; 0x264 <micros>
 2e0:	68 19       	sub	r22, r8
 2e2:	79 09       	sbc	r23, r9
 2e4:	8a 09       	sbc	r24, r10
 2e6:	9b 09       	sbc	r25, r11
 2e8:	68 3e       	cpi	r22, 0xE8	; 232
 2ea:	73 40       	sbci	r23, 0x03	; 3
 2ec:	81 05       	cpc	r24, r1
 2ee:	91 05       	cpc	r25, r1
 2f0:	a8 f3       	brcs	.-22     	; 0x2dc <_Z5blinki+0x2e>
			ms--;
 2f2:	21 e0       	ldi	r18, 0x01	; 1
 2f4:	c2 1a       	sub	r12, r18
 2f6:	d1 08       	sbc	r13, r1
 2f8:	e1 08       	sbc	r14, r1
 2fa:	f1 08       	sbc	r15, r1
			start += 1000;
 2fc:	88 ee       	ldi	r24, 0xE8	; 232
 2fe:	88 0e       	add	r8, r24
 300:	83 e0       	ldi	r24, 0x03	; 3
 302:	98 1e       	adc	r9, r24
 304:	a1 1c       	adc	r10, r1
 306:	b1 1c       	adc	r11, r1
{
	uint32_t start = micros();

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
 308:	c1 14       	cp	r12, r1
 30a:	d1 04       	cpc	r13, r1
 30c:	e1 04       	cpc	r14, r1
 30e:	f1 04       	cpc	r15, r1
 310:	29 f7       	brne	.-54     	; 0x2dc <_Z5blinki+0x2e>
  delay(750);
  digitalWrite(led, LOW);
 312:	60 e0       	ldi	r22, 0x00	; 0
 314:	8c 2f       	mov	r24, r28
}
 316:	cf 91       	pop	r28
 318:	ff 90       	pop	r15
 31a:	ef 90       	pop	r14
 31c:	df 90       	pop	r13
 31e:	cf 90       	pop	r12
 320:	bf 90       	pop	r11
 322:	af 90       	pop	r10
 324:	9f 90       	pop	r9
 326:	8f 90       	pop	r8
}

void blink(int led) {
  digitalWrite(led, HIGH);
  delay(750);
  digitalWrite(led, LOW);
 328:	0c 94 d3 00 	jmp	0x1a6	; 0x1a6 <digitalWrite>

0000032c <__vector_16>:
#if defined(TIM0_OVF_vect)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
 32c:	1f 92       	push	r1
 32e:	0f 92       	push	r0
 330:	0f b6       	in	r0, 0x3f	; 63
 332:	0f 92       	push	r0
 334:	11 24       	eor	r1, r1
 336:	2f 93       	push	r18
 338:	3f 93       	push	r19
 33a:	8f 93       	push	r24
 33c:	9f 93       	push	r25
 33e:	af 93       	push	r26
 340:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
 342:	80 91 01 01 	lds	r24, 0x0101	; 0x800101 <timer0_millis>
 346:	90 91 02 01 	lds	r25, 0x0102	; 0x800102 <timer0_millis+0x1>
 34a:	a0 91 03 01 	lds	r26, 0x0103	; 0x800103 <timer0_millis+0x2>
 34e:	b0 91 04 01 	lds	r27, 0x0104	; 0x800104 <timer0_millis+0x3>
	unsigned char f = timer0_fract;
 352:	30 91 00 01 	lds	r19, 0x0100	; 0x800100 <_edata>

	m += MILLIS_INC;
	f += FRACT_INC;
 356:	23 e0       	ldi	r18, 0x03	; 3
 358:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
 35a:	2d 37       	cpi	r18, 0x7D	; 125
 35c:	58 f5       	brcc	.+86     	; 0x3b4 <__vector_16+0x88>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
 35e:	01 96       	adiw	r24, 0x01	; 1
 360:	a1 1d       	adc	r26, r1
 362:	b1 1d       	adc	r27, r1
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
		m += 1;
	}

	timer0_fract = f;
 364:	20 93 00 01 	sts	0x0100, r18	; 0x800100 <_edata>
	timer0_millis = m;
 368:	80 93 01 01 	sts	0x0101, r24	; 0x800101 <timer0_millis>
 36c:	90 93 02 01 	sts	0x0102, r25	; 0x800102 <timer0_millis+0x1>
 370:	a0 93 03 01 	sts	0x0103, r26	; 0x800103 <timer0_millis+0x2>
 374:	b0 93 04 01 	sts	0x0104, r27	; 0x800104 <timer0_millis+0x3>
	timer0_overflow_count++;
 378:	80 91 05 01 	lds	r24, 0x0105	; 0x800105 <timer0_overflow_count>
 37c:	90 91 06 01 	lds	r25, 0x0106	; 0x800106 <timer0_overflow_count+0x1>
 380:	a0 91 07 01 	lds	r26, 0x0107	; 0x800107 <timer0_overflow_count+0x2>
 384:	b0 91 08 01 	lds	r27, 0x0108	; 0x800108 <timer0_overflow_count+0x3>
 388:	01 96       	adiw	r24, 0x01	; 1
 38a:	a1 1d       	adc	r26, r1
 38c:	b1 1d       	adc	r27, r1
 38e:	80 93 05 01 	sts	0x0105, r24	; 0x800105 <timer0_overflow_count>
 392:	90 93 06 01 	sts	0x0106, r25	; 0x800106 <timer0_overflow_count+0x1>
 396:	a0 93 07 01 	sts	0x0107, r26	; 0x800107 <timer0_overflow_count+0x2>
 39a:	b0 93 08 01 	sts	0x0108, r27	; 0x800108 <timer0_overflow_count+0x3>
}
 39e:	bf 91       	pop	r27
 3a0:	af 91       	pop	r26
 3a2:	9f 91       	pop	r25
 3a4:	8f 91       	pop	r24
 3a6:	3f 91       	pop	r19
 3a8:	2f 91       	pop	r18
 3aa:	0f 90       	pop	r0
 3ac:	0f be       	out	0x3f, r0	; 63
 3ae:	0f 90       	pop	r0
 3b0:	1f 90       	pop	r1
 3b2:	18 95       	reti
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
 3b4:	26 e8       	ldi	r18, 0x86	; 134
 3b6:	23 0f       	add	r18, r19
		m += 1;
 3b8:	02 96       	adiw	r24, 0x02	; 2
 3ba:	a1 1d       	adc	r26, r1
 3bc:	b1 1d       	adc	r27, r1
 3be:	d2 cf       	rjmp	.-92     	; 0x364 <__vector_16+0x38>

000003c0 <main>:

void init()
{
	// this needs to be called before setup() or some functions wont work there
	sei();
 3c0:	78 94       	sei
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
 3c2:	84 b5       	in	r24, 0x24	; 36
 3c4:	82 60       	ori	r24, 0x02	; 2
 3c6:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
 3c8:	84 b5       	in	r24, 0x24	; 36
 3ca:	81 60       	ori	r24, 0x01	; 1
 3cc:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
 3ce:	85 b5       	in	r24, 0x25	; 37
 3d0:	82 60       	ori	r24, 0x02	; 2
 3d2:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
 3d4:	85 b5       	in	r24, 0x25	; 37
 3d6:	81 60       	ori	r24, 0x01	; 1
 3d8:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
 3da:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
 3de:	81 60       	ori	r24, 0x01	; 1
 3e0:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
 3e4:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
 3e8:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
 3ec:	82 60       	ori	r24, 0x02	; 2
 3ee:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
 3f2:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
 3f6:	81 60       	ori	r24, 0x01	; 1
 3f8:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
 3fc:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 400:	81 60       	ori	r24, 0x01	; 1
 402:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>

	// set timer 2 prescale factor to 64
#if defined(TCCR2) && defined(CS22)
	sbi(TCCR2, CS22);
#elif defined(TCCR2B) && defined(CS22)
	sbi(TCCR2B, CS22);
 406:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
 40a:	84 60       	ori	r24, 0x04	; 4
 40c:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>

	// configure timer 2 for phase correct pwm (8-bit)
#if defined(TCCR2) && defined(WGM20)
	sbi(TCCR2, WGM20);
#elif defined(TCCR2A) && defined(WGM20)
	sbi(TCCR2A, WGM20);
 410:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 414:	81 60       	ori	r24, 0x01	; 1
 416:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
 41a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 41e:	84 60       	ori	r24, 0x04	; 4
 420:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
		sbi(ADCSRA, ADPS1);
 424:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 428:	82 60       	ori	r24, 0x02	; 2
 42a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
		sbi(ADCSRA, ADPS0);
 42e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 432:	81 60       	ori	r24, 0x01	; 1
 434:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
 438:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 43c:	80 68       	ori	r24, 0x80	; 128
 43e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
	// here so they can be used as normal digital i/o; they will be
	// reconnected in Serial.begin()
#if defined(UCSRB)
	UCSRB = 0;
#elif defined(UCSR0B)
	UCSR0B = 0;
 442:	10 92 c1 00 	sts	0x00C1, r1	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
int buttonAlgo2 = 13;
int led_array[8] = {led1, led2, led3, led4, led5, led6, led7, led8};
int array_length = sizeof(led_array) / sizeof(*led_array);

void setup() {
  pinMode(buttonAlgo1, INPUT);
 446:	60 e0       	ldi	r22, 0x00	; 0
 448:	87 e0       	ldi	r24, 0x07	; 7
 44a:	0e 94 01 01 	call	0x202	; 0x202 <pinMode>
  pinMode(buttonAlgo2, INPUT);
 44e:	60 e0       	ldi	r22, 0x00	; 0
 450:	8d e0       	ldi	r24, 0x0D	; 13
 452:	0e 94 01 01 	call	0x202	; 0x202 <pinMode>
 456:	c9 e0       	ldi	r28, 0x09	; 9
 458:	d1 e0       	ldi	r29, 0x01	; 1
  for (int i = 0; i < array_length; i++) {
    pinMode(led_array[i], OUTPUT);
 45a:	88 81       	ld	r24, Y
 45c:	22 96       	adiw	r28, 0x02	; 2
 45e:	61 e0       	ldi	r22, 0x01	; 1
 460:	0e 94 01 01 	call	0x202	; 0x202 <pinMode>
int array_length = sizeof(led_array) / sizeof(*led_array);

void setup() {
  pinMode(buttonAlgo1, INPUT);
  pinMode(buttonAlgo2, INPUT);
  for (int i = 0; i < array_length; i++) {
 464:	81 e0       	ldi	r24, 0x01	; 1
 466:	c9 31       	cpi	r28, 0x19	; 25
 468:	d8 07       	cpc	r29, r24
 46a:	b9 f7       	brne	.-18     	; 0x45a <__LOCK_REGION_LENGTH__+0x5a>
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
 46c:	00 e0       	ldi	r16, 0x00	; 0
 46e:	10 e0       	ldi	r17, 0x00	; 0
    blink(led_array[j]);
  }
}

void loop() {
  if (digitalRead(buttonAlgo1) == HIGH) {
 470:	87 e0       	ldi	r24, 0x07	; 7
 472:	0e 94 aa 00 	call	0x154	; 0x154 <digitalRead>
 476:	01 97       	sbiw	r24, 0x01	; 1
 478:	51 f4       	brne	.+20     	; 0x48e <__LOCK_REGION_LENGTH__+0x8e>
 47a:	c9 e0       	ldi	r28, 0x09	; 9
 47c:	d1 e0       	ldi	r29, 0x01	; 1
}

//lighting leds from 1 to 8
void algorithm1() {
  for (int i = 0; i < array_length; i++) {
    blink(led_array[i]);
 47e:	89 91       	ld	r24, Y+
 480:	99 91       	ld	r25, Y+
 482:	0e 94 57 01 	call	0x2ae	; 0x2ae <_Z5blinki>
  digitalWrite(led, LOW);
}

//lighting leds from 1 to 8
void algorithm1() {
  for (int i = 0; i < array_length; i++) {
 486:	81 e0       	ldi	r24, 0x01	; 1
 488:	c9 31       	cpi	r28, 0x19	; 25
 48a:	d8 07       	cpc	r29, r24
 48c:	c1 f7       	brne	.-16     	; 0x47e <__LOCK_REGION_LENGTH__+0x7e>

void loop() {
  if (digitalRead(buttonAlgo1) == HIGH) {
    algorithm1();
  }
  if (digitalRead(buttonAlgo2) == HIGH) {
 48e:	8d e0       	ldi	r24, 0x0D	; 13
 490:	0e 94 aa 00 	call	0x154	; 0x154 <digitalRead>
 494:	01 97       	sbiw	r24, 0x01	; 1
 496:	51 f4       	brne	.+20     	; 0x4ac <__LOCK_REGION_LENGTH__+0xac>
 498:	c9 e1       	ldi	r28, 0x19	; 25
 49a:	d1 e0       	ldi	r29, 0x01	; 1
  }
}
//lighting led in reversed order, from 8 to 1
void algorithm2() {
  for (int j = 7; j >= 0; j--) {
    blink(led_array[j]);
 49c:	9a 91       	ld	r25, -Y
 49e:	8a 91       	ld	r24, -Y
 4a0:	0e 94 57 01 	call	0x2ae	; 0x2ae <_Z5blinki>
    blink(led_array[i]);
  }
}
//lighting led in reversed order, from 8 to 1
void algorithm2() {
  for (int j = 7; j >= 0; j--) {
 4a4:	81 e0       	ldi	r24, 0x01	; 1
 4a6:	c9 30       	cpi	r28, 0x09	; 9
 4a8:	d8 07       	cpc	r29, r24
 4aa:	c1 f7       	brne	.-16     	; 0x49c <__LOCK_REGION_LENGTH__+0x9c>
 4ac:	01 15       	cp	r16, r1
 4ae:	11 05       	cpc	r17, r1
 4b0:	f9 f2       	breq	.-66     	; 0x470 <__LOCK_REGION_LENGTH__+0x70>
 4b2:	0e 94 00 00 	call	0	; 0x0 <__vectors>
 4b6:	dc cf       	rjmp	.-72     	; 0x470 <__LOCK_REGION_LENGTH__+0x70>

000004b8 <_GLOBAL__sub_I_led1>:
int led6 = 9;
int led7 = 11;
int led8 = 12;
int buttonAlgo1 = 7;
int buttonAlgo2 = 13;
int led_array[8] = {led1, led2, led3, led4, led5, led6, led7, led8};
 4b8:	e9 e0       	ldi	r30, 0x09	; 9
 4ba:	f1 e0       	ldi	r31, 0x01	; 1
 4bc:	82 e0       	ldi	r24, 0x02	; 2
 4be:	90 e0       	ldi	r25, 0x00	; 0
 4c0:	91 83       	std	Z+1, r25	; 0x01
 4c2:	80 83       	st	Z, r24
 4c4:	83 e0       	ldi	r24, 0x03	; 3
 4c6:	90 e0       	ldi	r25, 0x00	; 0
 4c8:	93 83       	std	Z+3, r25	; 0x03
 4ca:	82 83       	std	Z+2, r24	; 0x02
 4cc:	85 e0       	ldi	r24, 0x05	; 5
 4ce:	90 e0       	ldi	r25, 0x00	; 0
 4d0:	95 83       	std	Z+5, r25	; 0x05
 4d2:	84 83       	std	Z+4, r24	; 0x04
 4d4:	86 e0       	ldi	r24, 0x06	; 6
 4d6:	90 e0       	ldi	r25, 0x00	; 0
 4d8:	97 83       	std	Z+7, r25	; 0x07
 4da:	86 83       	std	Z+6, r24	; 0x06
 4dc:	88 e0       	ldi	r24, 0x08	; 8
 4de:	90 e0       	ldi	r25, 0x00	; 0
 4e0:	91 87       	std	Z+9, r25	; 0x09
 4e2:	80 87       	std	Z+8, r24	; 0x08
 4e4:	89 e0       	ldi	r24, 0x09	; 9
 4e6:	90 e0       	ldi	r25, 0x00	; 0
 4e8:	93 87       	std	Z+11, r25	; 0x0b
 4ea:	82 87       	std	Z+10, r24	; 0x0a
 4ec:	8b e0       	ldi	r24, 0x0B	; 11
 4ee:	90 e0       	ldi	r25, 0x00	; 0
 4f0:	95 87       	std	Z+13, r25	; 0x0d
 4f2:	84 87       	std	Z+12, r24	; 0x0c
 4f4:	8c e0       	ldi	r24, 0x0C	; 12
 4f6:	90 e0       	ldi	r25, 0x00	; 0
 4f8:	97 87       	std	Z+15, r25	; 0x0f
 4fa:	86 87       	std	Z+14, r24	; 0x0e
    algorithm1();
  }
  if (digitalRead(buttonAlgo2) == HIGH) {
    algorithm2();
  }
}
 4fc:	08 95       	ret

000004fe <__tablejump2__>:
 4fe:	ee 0f       	add	r30, r30
 500:	ff 1f       	adc	r31, r31
 502:	05 90       	lpm	r0, Z+
 504:	f4 91       	lpm	r31, Z
 506:	e0 2d       	mov	r30, r0
 508:	09 94       	ijmp

0000050a <_exit>:
 50a:	f8 94       	cli

0000050c <__stop_program>:
 50c:	ff cf       	rjmp	.-2      	; 0x50c <__stop_program>
