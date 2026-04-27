- From Murata support pages: source power consumption might be around 5Vpp * 6.3mA = 31.5mW. Also mentions an impedance = 400 Ω , which would give 8.8mA...
- One could measure the approximate power consumption with the Arduino via an extra 2 pins + resistor - ![schematic](Exported%20image%2020260410112941-0.png)

_From_ _https://arduino.stackexchange.com/questions/86958/can-arduino-show-the-power-drawn-from-its-output-pin-on-serial-monitor-if-yes_
 - The power produced might be similar to that of a dipole. Not sure how one might calculate sound power from a dipole. For a monopole, the power density must surely vary with Area, so 
P A ∝ 1 4 𝜋 r 2  
 
So we might expect the sound intensity to follow an approximately inverse-square law due to the dissipation of power.
 - From Fahy Chapter 5: we say that sound intensity is proportional to sound pressure x particle velocity, but sensor responds to sound pressure not intensity. : (U+A751)

I   =   ꝑ v  
And from 5.6.2, the equation for the pressure field is given

Ꝑ   ∝ Q c o s ⁡ 𝜃 r   1 r 2 +   𝜔 c 0 2 e   j a r c t a n ⁡     𝜔 c 0 r         e −   j     𝜔   c 0 r  

When ( 𝜔 c 0 ) is much smaller than r, then this reduces to the inverse square law..., but in fact \omega = 40kHz and c_0
        Ꝑ   ∝ Q c o s ⁡ 𝜃 r   1 r 2 +   𝜔 c 0 2 e   j a r c t a n ⁡     𝜔 c 0 r         e −   j     𝜔   c 0 r