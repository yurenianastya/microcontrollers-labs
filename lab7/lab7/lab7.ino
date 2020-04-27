#include<SevSeg.h>

//a = 3;
//f = 4;
//b = 7;
//d4 = 2;
//d3 = 5;
//d2 = 6;
//e = 8;
//d = 9;
//dp = 10;
//c = 11;
//g = 12;
//d1 = 13;
//14 - A0
//15 - A1
//16 - A2
//17 - A3
//18 - A4
//19 - A5

int counter = 0;
int delayTime = 1000;

byte numDigits = 4;
byte segmentPins[] = {3, 7, 11, 9, 8, 4, 12, 10};
byte digitPins[] = {2, 5, 6, 13} ;

int button1 = 15;
int button2 = 16;
int button3 = 17;
int button4 = 18;

int entries[10];
int cache_number = 0;
int iterator = 0;

SevSeg display;

void setup() {
  pinMode(INPUT, button1);
  pinMode(INPUT, button2);
  pinMode(INPUT, button3);
  pinMode(INPUT, button4);
  display.begin(COMMON_ANODE, numDigits, digitPins, segmentPins, true);
  display.blank();
}

void timeflow() {
  static unsigned long timer = millis();
  if (millis() - timer >= delayTime) {
    if (counter < 60) {
      display.setNumber(counter);
      counter++;
    } else {
      counter = 0;
    }
    timer = millis();
  }
}

void loop() {
  delay(2);
  if (digitalRead(button1) == HIGH) {
    timeflow();
  } 
  if(digitalRead(button2) == HIGH) {
    //caching
    entries[cache_number] = counter;
    cache_number++;
  } 
  if(digitalRead(button3)== HIGH) {
    //restart to zero
    counter = 0;
    display.setNumber(counter);
  }
  if (digitalRead(button4) == HIGH) {
    // display entries
    display.setNumber(iterator);
    iterator++;
  }
  display.refreshDisplay();
}
