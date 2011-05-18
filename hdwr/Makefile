#
# *.mod - spice netlist for modeling
# *.raw - output from ngspice, use gwave to view
# *.sch - schematic files view/edit with gschem
#
#
all: simulate

lc_osc.mod: lc_osc.sch spicecmds models/LM339.5_1 models/LM393.5_1
	gnetlist -g spice-sdb lc_osc.sch -o lc_osc.mod

simulate: lc_osc.mod
	ngspice -b lc_osc.mod -r lc_osc.raw -o messages.log
	#
	# view with gwave ls_osc.raw

clean:
	$(RM) *.log *.raw *.sch~
	$(RM) *.mod
