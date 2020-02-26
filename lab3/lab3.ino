#include <LiquidCrystal_I2C.h>
#include <Keypad.h>
#include <Wire.h>
// just a buzzer!
const int buzzer = 13;
// keypad variables declaring
const byte rows = 4;
const byte columns = 4;
const char keys[rows][columns] = {
  {'1', '2', '3', 'A'},
  {'4', '5', '6', 'B'},
  {'7', '8', '9', 'C'},
  {'*', '0', '#', 'D'}
};
byte rowPins[rows] = {2, 3, 4, 5};
byte columnPins[columns] = {6, 7, 8, 9};
// time variables
int hours = 0;
int mins = 0;
int seconds = 0;
// cached entries variables;
String cached_entries[60] = {};
int sequence_number = 0;
// lcd
LiquidCrystal_I2C lcd(0x27, 16, 2);
// keypad
Keypad keypad(makeKeymap(keys), rowPins, columnPins, rows, columns);
char key = keypad.getKey();

void start_menu() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Nsty's Stopwatch");
  lcd.setCursor(0, 1);
  lcd.print("press D to start");
}

void setup() {
  Serial.begin(9600);
  lcd.init();
  lcd.backlight();
  start_menu();
  pinMode(13, OUTPUT);
}

// stopwatch resets and stops
void full_stop() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Full stop");
  seconds = 0;
  mins = 0;
  hours = 0;
  lcd.setCursor(0, 1);
  lcd.print("00");
  lcd.setCursor(3, 1);
  lcd.print("00");
  lcd.setCursor(6, 1);
  lcd.print("00");
  lcd.setCursor(2, 1);
  lcd.print(":");
  lcd.setCursor(5, 1);
  lcd.print(":");
  lcd.setCursor(0, 0);
}
// stopwatch starts ticking
void start_countdown() {
  lcd.clear();
  lcd.setCursor(2, 1);
  lcd.print(":");
  lcd.setCursor(5, 1);
  lcd.print(":");
  lcd.setCursor(0, 0);
  lcd.print("Stopwatch");
  while (keypad.getKey() != 'D' && keypad.getKey() != 'C') {
    if (seconds < 60) {
      lcd.setCursor(6, 1);
      lcd.print(seconds);
      lcd.setCursor(3, 1);
      lcd.print(mins);
      lcd.setCursor(0, 1);
      lcd.print(hours);
      delay(1000);
      seconds++;
      noTone(buzzer);
    } else if (mins < 60) {
      tone(buzzer, 3000);
      seconds = 0;
      mins++;
      lcd.setCursor(7, 1);
      lcd.print(" ");
    } else if (hours < 60) {
      seconds = 0;
      mins = 0;
      hours++;
      lcd.setCursor(4, 1);
      lcd.print(" ");
      lcd.setCursor(7, 1);
      lcd.print(" ");
    }
  }
}
// caching the entry
void cache() {
  String str_hours = String(hours);
  String str_mins = String(mins);
  String str_seconds = String(seconds);
  String cached_entry = str_hours + ":" + str_mins + ":" + str_seconds;
  cached_entries[sequence_number] = cached_entry;
  sequence_number++;
  lcd.setCursor(13, 0);
  lcd.print(sequence_number);
  lcd.setCursor(15, 0);
  lcd.print("M");
}

void cached_menu() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Cached entries");
  lcd.setCursor(5, 1);
  lcd.print(cached_entries[0]);
  lcd.setCursor(5, 1);
  lcd.print(cached_entries[sequence_number]);
  sequence_number = 0;
  lcd.setCursor(0, 1);
  lcd.print(sequence_number + 1);
  while (keypad.getKey() != 'A') {
    if (keypad.getKey() == 'B') {
      if (cached_entries[sequence_number] != 0) {
        lcd.setCursor(5, 1);
        lcd.print(cached_entries[sequence_number]);
        lcd.setCursor(0, 1);
        lcd.print(sequence_number + 1);
        sequence_number++;
      } else {
        sequence_number = 0;
      }
    } else if (keypad.getKey() == '*') {
      reset_cache();
      break;
    }
  }
}

void reset_cache() {
  for (int i = 0; i < 60; i++) {
    cached_entries[i] = '0';
  }
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Cache cleared!");
}

void loop() {
  key = keypad.getKey();
  if (key == 'D') { // Check for a valid key.
    start_countdown();
  } else if (key == 'C') {
    full_stop();
  } else if (key == '#') {
    cache();
  } else if (key == 'A') {
    cached_menu();
  } else if (key == '*') {
    reset_cache();
  }
}
