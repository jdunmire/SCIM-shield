# SCIM-shield - Capacitance, Inductance, and Frequency Shield for Arduino

This shield enables an Arduino to measure capacitance, inductance, and
frequency. A display is not included, so the sketch will have to report
the values over the serial port. 

The concept is based on the
[http://www.kerrywong.com/2010/10/16/avr-lc-meter-with-frequency-measurement/](AVR
LC Meter) by [http://www.kerrywong.com/about/](Kerry Wong).

The schematics and PCB layout were developed with the
[http://www.geda-project.org/](gEDA) tools running
on [http://www.ubuntu.com/](Ubuntu).

A Makefile in the hdwr/ directory runs a design rule check, runs a
design simulation using [http://ngspice.sourceforge.net/](ngSpice), and
produces Gerber files for delivery to a PCB fabricator. Simply run `make
all` in the `hdwr/` directory. See comments in the `Makefile` for more
details.

My development notes are spread throught the project.
