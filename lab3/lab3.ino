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
  for (int i = 0; i < 60; i++) {
    cached_entries[i] = "0";
  }
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

void beep() {
  tone(buzzer, 2500);
  delay(200);
  noTone(buzzer);
}

void time_flow() {
  if (seconds < 60) {
    lcd.setCursor(6, 1);
    lcd.print(seconds);
    lcd.setCursor(3, 1);
    lcd.print(mins);
    lcd.setCursor(0, 1);
    lcd.print(hours);
    delay(1000);
    noTone(buzzer);
    seconds++;
  } else if (mins < 60) {
    tone(buzzer, 2500);
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

// stopwatch resets and stops
void full_stop() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Full stop");
  seconds = 0;
  mins = 0;
  hours = 0;
  lcd.setCursor(0, 1);
  lcd.print("0 ");
  lcd.setCursor(3, 1);
  lcd.print("0 ");
  lcd.setCursor(6, 1);
  lcd.print("0 ");
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
  while (keypad.getKey() != 'D') {
    if (keypad.getState() == HOLD) {
      cache();
    }
    notification();
    time_flow();
  }
  char next_menu = keypad.waitForKey();
  if (next_menu == 'C') {
    beep();
    full_stop();
  } else if (next_menu == '*') {
    beep();
    reset_cache();
  } else if (next_menu == 'A') {
    beep();
    cached_menu();
  } else if (next_menu == 'D') {
    beep();
    //actually continues it
    start_countdown();
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
}

void notification() {
  lcd.setCursor(13, 0);
  lcd.print(sequence_number);
  lcd.setCursor(15, 0);
  lcd.print("M");
}

void reset_cache() {
  for (int i = 0; i < 60; i++) {
    cached_entries[i] = "0";
  }
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Cache cleared!");
  sequence_number = 0;
}

void navigation() {
  lcd.setCursor(0,0);
  lcd.print("Enter number");
  int first_digit = keypad.waitForKey()-'0';
  beep();
  lcd.setCursor(0,1);
  lcd.print(first_digit);
  char input = keypad.waitForKey();
  beep();
  lcd.setCursor(1,1);
  lcd.print(input);
  if (input == '#') {
    if (cached_entries[first_digit - 1] != "0") {
      lcd.setCursor(5, 1);
      lcd.print(cached_entries[first_digit - 1]);
      lcd.setCursor(0, 1);
      lcd.print(first_digit);
    } else {
      lcd.setCursor(0, 1);
      lcd.print("try again");
    }
  } else {
    first_digit = first_digit * 10;
    int full_number = first_digit + (input - '0');
    lcd.setCursor(5, 1);
    if (cached_entries[full_number - 1] == "0") {
      lcd.setCursor(0, 1);
      lcd.print("try again");
    } else {
      lcd.print(cached_entries[full_number-1]);
      lcd.setCursor(0, 1);
      lcd.print(full_number);
    }
  }
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
    char next_menu = keypad.waitForKey();
    if (next_menu == 'B') {
      if (cached_entries[sequence_number] != "0") {
        lcd.setCursor(5, 1);
        lcd.print(cached_entries[sequence_number]);
        lcd.setCursor(0, 1);
        sequence_number++;
        lcd.print(sequence_number);
      } else {
        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("Cached entries");
        sequence_number = 0;
      }
    } else if (next_menu == '*') {
      reset_cache();
      break;
    } else if (next_menu == '#') {
      navigation();
      break;
    }
  }
}

void loop() {
  key = keypad.getKey();
  beep();
  if (key == 'D') {
    start_countdown();
  } else if (key == 'A') {
    cached_menu();
  }
}
