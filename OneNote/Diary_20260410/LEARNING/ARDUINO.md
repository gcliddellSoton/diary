1. Macros
2. Non-blocking delay
3. Interrupts
4. Timers!
5. SD Card Modules
6. RTC troubleshooting
7. Stepper motors
8. SAMD21 sercom ports
   

**Macros**  
```  
#define SD_SCK_MHZ(maxMhz) (1000000UL * (maxMhz))  
```  
replaces all instances of SD_SCK_MHZ(x) with (1000000UL * (x))!! I find this one hard to understand!  
```  
typedef TYPE1 TYPE2  
```  
just makes TYPE2 an alias of TYPE1. In Sdfat library, it is apparently used to ensure backcompatibility.
 
**Non-blocking Delays**
 
**Millis…**  
[https://docs.arduino.cc/built-in-examples/digital/BlinkWithoutDelay/](https://docs.arduino.cc/built-in-examples/digital/BlinkWithoutDelay/)
   

**Timers…**
   

**Hacky…**
 
```  
bool myDelay(unsigned long milliseconds)￼{￼ unsigned long startTime = millis();￼  
while (millis() - startTime \<= milliseconds) {￼ if (digitalRead(buttonPin))￼ return true;￼ }￼  
return false;￼}
 
// Usage replaces `delay(x);`  
if ( myDelay(x) ) return;  
```

\> From \<[https://forum.arduino.cc/t/lantern-with-sos-led/921561/9?_gl=1*d3k0ds*_up*MQ..*_ga*MjExMTQ2NjYyMC4xNzYzNDkzNTU0*_ga_NEXN8H46L5*czE3NjM0OTM1NTQkbzEkZzAkdDE3NjM0OTM1NTQkajYwJGwwJGgxNzMwMzk2NTM0](https://forum.arduino.cc/t/lantern-with-sos-led/921561/9?_gl=1*d3k0ds*_up*MQ..*_ga*MjExMTQ2NjYyMC4xNzYzNDkzNTU0*_ga_NEXN8H46L5*czE3NjM0OTM1NTQkbzEkZzAkdDE3NjM0OTM1NTQkajYwJGwwJGgxNzMwMzk2NTM0)\>     

**Interrupts**  
**Docs -** [https://docs.arduino.cc/language-reference/en/functions/external-interrupts/attachInterrupt/?_gl=1*1y8h46r*_up*MQ..*_ga*MjkwNjQ0MDkwLjE3NjM0OTA0MDU.*_ga_NEXN8H46L5*czE3NjM0OTA0MDQkbzEkZzAkdDE3NjM0OTA0MDQkajYwJGwwJGg3MTMzMjg1Mw](https://docs.arduino.cc/language-reference/en/functions/external-interrupts/attachInterrupt/?_gl=1*1y8h46r*_up*MQ..*_ga*MjkwNjQ0MDkwLjE3NjM0OTA0MDU.*_ga_NEXN8H46L5*czE3NjM0OTA0MDQkbzEkZzAkdDE3NjM0OTA0MDQkajYwJGwwJGg3MTMzMjg1Mw)..  
**Extra Info -** [https://gammon.com.au/interrupts](https://gammon.com.au/interrupts)
 
modes:  
LOW  
RISING  
CHANGE  
FALLING  
HIGH (Only on some boards)
   

**Debounce**
 
Hardware debounce, possibly with Schmitt trigger e.g. 74HC14. A 1μF capacitor, with the 35kΩ internal pull-up results in 35ms debounce time-constant.

\> From \<[https://forum.arduino.cc/t/hardware-debounce-a-switch-2-types/1317188/3](https://forum.arduino.cc/t/hardware-debounce-a-switch-2-types/1317188/3)\>   ![image](Exported%20image%2020260410113213-0.png)  

A more in-depth tutorial is here: [https://my.eng.utah.edu/~cs5780/debouncing.pdf](https://my.eng.utah.edu/~cs5780/debouncing.pdf)