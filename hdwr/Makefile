#
# *.mod - spice netlist for modeling
# *.raw - output from ngspice, use gwave to view
# *.sch - schematic files view/edit with gschem
#
#
all: simulate

simulate: lc_osc.raw

lc_osc.mod: spicecmds models/LM339.5_1 models/LM393.5_1

# ngspice models
%.mod: %.sch
	gnetlist -g spice-sdb $< -o $@

# ngspice results
%.raw: %.mod
	ngspice -b $< -r $@ -o messages.log
	#
	# view with gwave ls_osc.raw

clean:
	$(RM) *.log *.raw *.sch~
	$(RM) *.mod
