# SCIM-shield - Capacitance, Inductance, and Frequency Shield for Arduino

This shield enables an Arduino to measure capacitance, inductance, and
frequency. A display is not included, so the sketch will have to report
the values over the serial port. 

The [MeasureFCI](https://github.com/jdunmire/MeasureFCI) sketch works with
this board.

The concept is based on the
[AVR LC Meter](http://www.kerrywong.com/2010/10/16/avr-lc-meter-with-frequency-measurement/)
by [Kerry Wong](http://www.kerrywong.com/about/).

The schematics and PCB layout were developed with the
[gEDA](http://www.geda-project.org/)
tools running
on [Ubuntu](http://www.ubuntu.com/).

A Makefile in the hdwr/ directory runs a design rule check, runs a
design simulation using [ngSpice](http://ngspice.sourceforge.net/), and
produces Gerber files for delivery to a PCB fabricator. Simply run `make
all` in the `hdwr/` directory. See comments in the `Makefile` for more
details.

My development notes are spread throught the project. The project has
been spread over several years because it has been a _spare-time_
project. As of (June 2014) PCBs have been built, the first unit built
and tested.

__WARNING__: The silk-screen for the diodes is reversed.
