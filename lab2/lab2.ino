//variables
int led1 = 2;
int led2 = 3;
int led3 = 5;
int led4 = 6;
int led5 = 8;
int led6 = 9;
int led7 = 11;
int led8 = 12;
int buttonAlgo1 = 7;
int buttonAlgo2 = 13;
int led_array[8] = {led1, led2, led3, led4, led5, led6, led7, led8};
int array_length = sizeof(led_array) / sizeof(*led_array);

void setup() {
  pinMode(buttonAlgo1, INPUT);
  pinMode(buttonAlgo2, INPUT);
  for (int i = 0; i < array_length; i++) {
    pinMode(led_array[i], OUTPUT);
  }
}

void blink(int led) {
  digitalWrite(led, HIGH);
  delay(750);
  digitalWrite(led, LOW);
}

//lighting leds from 1 to 8
void algorithm1() {
  for (int i = 0; i < array_length; i++) {
    blink(led_array[i]);
  }
}
//lighting led in reversed order, from 8 to 1
void algorithm2() {
  for (int j = 7; j >= 0; j--) {
    blink(led_array[j]);
  }
}

void loop() {
  if (digitalRead(buttonAlgo1) == HIGH) {
    algorithm1();
  }
  if (digitalRead(buttonAlgo2) == HIGH) {
    algorithm2();
  }
}
