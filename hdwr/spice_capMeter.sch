v 20100214 2
C 40000 40000 0 0 0 title-B.sym
T 50100 40900 9 16 1 0 0 0 1
Spice Model for L/C/F Meter - Capacitance
T 54000 40100 9 10 1 0 0 0 1
J. Dunmire
C 44800 46000 1 0 0 lc_osc.sym
{
T 45000 47600 5 10 1 1 0 0 1
refdes=A1
T 45806 46264 5 10 0 0 0 0 1
device=none
}
C 52900 49400 1 0 0 5V-plus-1.sym
C 53000 47900 1 0 0 gnd-1.sym
C 52800 48200 1 0 0 vdc-1.sym
{
T 53500 48850 5 10 1 1 0 0 1
refdes=V1
T 53500 49050 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 53500 49250 5 10 0 0 0 0 1
footprint=none
T 53500 48650 5 10 1 1 0 0 1
value=DC 5V
}
C 40300 49900 1 0 0 spice-model-1.sym
{
T 40400 50600 5 10 0 1 0 0 1
device=model
T 40400 50500 5 10 1 1 0 0 1
refdes=A3
T 40800 50000 5 10 1 1 0 0 1
file=./models/LM393.5_1
T 41500 50200 5 10 1 1 0 0 1
model-name=LM393
}
C 40300 49000 1 0 0 spice-include-1.sym
{
T 40400 49300 5 10 0 1 0 0 1
device=include
T 40400 49400 5 10 1 1 0 0 1
refdes=A4
T 40800 49100 5 10 1 1 0 0 1
file=./spicecmds
}
C 44400 45400 1 0 0 gnd-1.sym
N 44800 46600 44500 46600 4
N 44500 46600 44500 45700 4
C 44300 46900 1 0 0 nc-left-1.sym
{
T 44300 47300 5 10 0 0 0 0 1
value=NoConnection
T 44300 47700 5 10 0 0 0 0 1
device=DRC_Directive
}
N 47000 47000 48200 47000 4
{
T 47700 47000 5 10 1 0 0 0 1
netname=Vosc
}
