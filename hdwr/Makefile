#
# *.mod - spice netlist for modeling
# *.raw - output from ngspice, use gwave to view
# *.sch - schematic files view/edit with gschem
# *.prj - gsch2pcb project file
# *.pcb - pcb file
#
#
all: simulate

simulate: lc_osc.raw

lc_osc.mod: spicecmds models/LM339.5_1 models/LM393.5_1

newUnoTrial.pcb: newUnoTrial.sch

%.pcb: %.prj
	gsch2pcb $<

%.prj:
	@( echo "# Initial control file for gsch2pcb" ;\
	  echo "# Edit as necessary and add to source repository." ;\
	  echo "# Check the schematics line. It is generated with only a" ;\
	  echo "# single file name and probably needs to be extended." ;\
	  echo "elements-dir pkgs" ;\
	  echo "output-name $(basename $(@F))" ;\
	  echo "schematics $(addsuffix .sch,$(basename $(@F)))" ;\
	) >$@

# ngspice models
%.mod: %.sch
	gnetlist -g spice-sdb $< -o $@

# ngspice results
%.raw: %.mod
	ngspice -b $< -r $@ -o messages.log
	#
	# view with gwave lc_osc.raw

clean:
	$(RM) *.log *.raw
	$(RM) *.mod
	$(RM) *.cmd
	$(RM) *.net
	$(RM) *.new.pcb


distclean: clean
	$(RM) *~
	$(RM) sym/*~
	$(RM) \#*\#
	$(RM) sym/\#*\#
