v 20100214 2
C 40000 40000 0 0 0 title-B.sym
C 47400 43600 1 0 0 switch-pushbutton-no-1.sym
{
T 47800 43900 5 10 1 1 0 0 1
refdes=S3
T 47800 44200 5 10 0 0 0 0 1
device=SWITCH_PUSHBUTTON_NO
}
C 40200 40200 1 0 0 copyright-1.sym
{
T 40304 42374 5 10 0 0 0 0 1
device=none
T 40304 41774 5 10 0 0 0 0 1
footprint=none
}
T 50000 40900 9 20 1 0 0 0 1
Arduino Shield: L/C/F Meter
T 53900 40100 9 10 1 0 0 0 1
J. Dunmire
T 51800 40200 9 14 1 0 0 0 1
4
T 50600 40200 9 14 1 0 0 0 1
4
C 49800 44900 1 0 0 NHD_C0216CiZ-1.sym
{
T 52600 48975 5 10 0 0 0 0 1
device=NHD-C0216CiZ
T 52600 49400 5 10 0 0 0 0 1
footprint=NHD_C0216CiZ
T 50200 48900 5 10 1 1 0 0 1
refdes=U2
}
C 51400 49800 1 0 0 3.3V-plus-1.sym
C 42800 46600 1 0 0 PCA9507-1.sym
{
T 45195 48595 5 10 0 0 0 0 1
device=PCA9507
T 43795 48495 5 10 1 1 0 0 1
refdes=U3
T 45195 49031 5 10 0 0 0 0 1
footprint=SO8
}
C 43200 49800 1 0 0 5V-plus-1.sym
N 45200 47900 48600 47900 4
N 48600 47900 48600 47700 4
N 48600 47700 49100 47700 4
N 49800 47500 49100 47500 4
N 49100 47500 49100 47700 4
N 45200 47500 48900 47500 4
N 48900 47500 48900 47900 4
N 48900 47900 49800 47900 4
C 44400 49800 1 0 0 3.3V-plus-1.sym
N 43400 49800 43400 48700 4
N 44600 49800 44600 48700 4
C 43900 46100 1 0 0 gnd-1.sym
C 51500 44100 1 0 0 gnd-1.sym
N 51600 44900 51600 44400 4
N 44000 46600 44000 46400 4
N 51600 49800 51600 49100 4
C 40900 47800 1 0 0 in-1.sym
{
T 40900 48100 5 10 0 0 0 0 1
device=INPUT
T 40900 48100 5 10 1 1 0 0 1
refdes=SDA
}
C 55700 46900 1 0 1 in-1.sym
{
T 55700 47200 5 10 0 0 0 6 1
device=INPUT
T 55700 47100 5 10 1 1 0 6 1
refdes=LED
}
N 53600 47000 55100 47000 4
C 40900 47400 1 0 0 in-1.sym
{
T 40900 47700 5 10 0 0 0 0 1
device=INPUT
T 40900 47700 5 10 1 1 0 0 1
refdes=SCL
}
N 41500 47900 42800 47900 4
N 41500 47500 42800 47500 4
C 46900 43100 1 0 0 gnd-1.sym
C 49000 43500 1 0 0 out-1.sym
{
T 49000 43800 5 10 0 0 0 0 1
device=OUTPUT
T 49000 43800 5 10 1 1 0 0 1
refdes=START
}
N 48400 43600 49000 43600 4
N 47400 43600 47000 43600 4
N 47000 43600 47000 43400 4
N 49800 48300 48400 48300 4
N 48400 48300 48400 45000 4
N 47000 45000 48400 45000 4
C 49300 48600 1 90 0 resistor-1.sym
{
T 48900 48900 5 10 0 0 90 0 1
device=RESISTOR
T 48700 49300 5 10 1 1 180 6 1
refdes=R17
T 48700 48900 5 10 1 1 0 0 1
value=10k
T 49300 48600 5 10 0 1 0 0 1
footprint=0.125_W_Carbon_resistor
}
C 49000 49800 1 0 0 3.3V-plus-1.sym
N 49200 49800 49200 49500 4
N 49200 48600 49200 48300 4
C 48700 46300 1 0 0 capacitor-1.sym
{
T 48900 47000 5 10 0 0 0 0 1
device=CAPACITOR
T 48900 46800 5 10 1 1 0 0 1
refdes=C4
T 48900 47200 5 10 0 0 0 0 1
symversion=0.1
T 49200 46200 5 10 1 1 0 0 1
value=1uF
T 49200 46500 5 10 0 1 0 0 1
footprint=CK05_type_Capacitor
}
C 54200 48500 1 90 0 capacitor-1.sym
{
T 53500 48700 5 10 0 0 90 0 1
device=CAPACITOR
T 53600 49200 5 10 1 1 180 6 1
refdes=C5
T 53300 48700 5 10 0 0 90 0 1
symversion=0.1
T 53600 48700 5 10 1 1 0 0 1
value=1uF
T 54100 49000 5 10 0 1 0 0 1
footprint=CK05_type_Capacitor
}
N 49800 46500 49600 46500 4
N 48700 46500 48600 46500 4
N 48600 46500 48600 46100 4
N 48600 46100 49800 46100 4
N 53600 48300 54000 48300 4
N 54000 48300 54000 48500 4
N 54000 49400 54000 49500 4
N 51600 49500 54000 49500 4
C 54900 48500 1 90 0 resistor-1.sym
{
T 54500 48800 5 10 0 0 90 0 1
device=RESISTOR
T 55000 49200 5 10 1 1 180 6 1
refdes=R11
T 54900 48500 5 10 0 1 0 0 1
footprint=0.125_W_Carbon_resistor
T 55000 48800 5 10 1 1 0 0 1
value=56
}
N 53600 47400 54800 47400 4
N 54800 47400 54800 48500 4
N 54800 49800 54800 49400 4
C 47700 48600 1 90 0 resistor-1.sym
{
T 47300 48900 5 10 0 0 90 0 1
device=RESISTOR
T 47100 49300 5 10 1 1 180 6 1
refdes=R12
T 47100 48900 5 10 1 1 0 0 1
value=10k
T 47700 48600 5 10 0 1 0 0 1
footprint=0.125_W_Carbon_resistor
}
C 46900 48600 1 90 0 resistor-1.sym
{
T 46500 48900 5 10 0 0 90 0 1
device=RESISTOR
T 46300 49300 5 10 1 1 180 6 1
refdes=R13
T 46300 48900 5 10 1 1 0 0 1
value=10k
T 46900 48600 5 10 0 1 0 0 1
footprint=0.125_W_Carbon_resistor
}
C 42600 48600 1 90 0 resistor-1.sym
{
T 42200 48900 5 10 0 0 90 0 1
device=RESISTOR
T 42700 49300 5 10 1 1 180 6 1
refdes=R14
T 42700 48900 5 10 1 1 0 0 1
value=10k
T 42600 48600 5 10 0 1 0 0 1
footprint=0.125_W_Carbon_resistor
}
C 42000 48600 1 90 0 resistor-1.sym
{
T 41600 48900 5 10 0 0 90 0 1
device=RESISTOR
T 41400 49200 5 10 1 1 180 6 1
refdes=R15
T 41400 48800 5 10 1 1 0 0 1
value=10k
T 42000 48600 5 10 0 1 0 0 1
footprint=0.125_W_Carbon_resistor
}
N 46800 48600 46800 47900 4
N 47600 48600 47600 47500 4
N 42500 48600 42500 47900 4
N 41900 48600 41900 47500 4
N 41900 49500 41900 49600 4
N 41900 49600 43400 49600 4
N 42500 49500 42500 49600 4
N 47600 49500 47600 49600 4
N 47600 49600 44600 49600 4
N 46800 49500 46800 49600 4
C 45900 48600 1 90 0 resistor-1.sym
{
T 45500 48900 5 10 0 0 90 0 1
device=RESISTOR
T 45300 49300 5 10 1 1 180 6 1
refdes=R16
T 45300 48900 5 10 1 1 0 0 1
value=10k
T 45900 48600 5 10 0 1 0 0 1
footprint=0.125_W_Carbon_resistor
}
N 45200 47100 45800 47100 4
N 45800 47100 45800 48600 4
N 45800 49500 45800 49600 4
C 46400 44900 1 0 0 in-1.sym
{
T 46400 45200 5 10 0 0 0 0 1
device=INPUT
T 46400 45200 5 10 1 1 0 0 1
refdes=RST
}
C 54600 49800 1 0 0 5V-plus-1.sym
C 42200 43500 1 90 0 capacitor-1.sym
{
T 41500 43700 5 10 0 0 90 0 1
device=CAPACITOR
T 41700 44100 5 10 1 1 180 0 1
refdes=C6
T 41300 43700 5 10 0 0 90 0 1
symversion=0.1
T 41300 43700 5 10 1 1 0 0 1
value=0.1 uF
T 42200 43500 5 10 0 1 0 0 1
footprint=CK05_type_Capacitor
}
C 43600 43500 1 90 0 capacitor-1.sym
{
T 42900 43700 5 10 0 0 90 0 1
device=CAPACITOR
T 43100 44100 5 10 1 1 180 0 1
refdes=C7
T 42700 43700 5 10 0 0 90 0 1
symversion=0.1
T 42700 43700 5 10 1 1 0 0 1
value=0.1 uF
T 43600 43500 5 10 0 1 0 0 1
footprint=CK05_type_Capacitor
}
C 43300 43000 1 0 0 gnd-1.sym
C 41900 43000 1 0 0 gnd-1.sym
C 41800 44700 1 0 0 5V-plus-1.sym
C 43200 44700 1 0 0 3.3V-plus-1.sym
N 42000 44700 42000 44400 4
N 43400 44700 43400 44400 4
N 43400 43500 43400 43300 4
N 42000 43500 42000 43300 4
T 42100 45200 9 10 1 0 0 0 1
Locate near U3
