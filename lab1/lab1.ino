//variables
int LED1 = 2;
int LED2 = 3;
int LED3 = 5;
int LED4 = 6;
int LED5 = 8;
int LED6 = 9;
int LED7 = 11;
int LED8 = 12;
int LED_array[8] = { LED1, LED2, LED3, LED4, LED5, LED6, LED7, LED8 };
int array_length = sizeof(LED_array) / sizeof(*LED_array);

void blink(int LED) {
  digitalWrite(LED, HIGH);
  delay(750);
  digitalWrite(LED, LOW);
}

void setup() {
  // telling arduino that those pins have output
  for (int i = 0; i < array_length; i++) {
    pinMode(LED_array[i], OUTPUT);
  }
  for (int i = 0; i < array_length; i++) {
    blink(LED_array[i]);
  }
}

void loop() {

}
