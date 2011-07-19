#
# *.ckt - spice netlist for modeling
# *.raw - output from ngspice, use gwave to view
# *.sch - schematic files view/edit with gschem
# *.prj - gsch2pcb project file
# *.pcb - pcb file
#
#
PROJNAME=lcMeter
TOPSCHEM=$(PROJNAME)_top.sch
OTHERSCHEM=lc_ui.sch lc_osc.sch freq_buf.sch

ALLSCHEM=$(TOPSCHEM) $(OTHERSCHEM)

check: $(addsuffix .drc,$(basename $(ALLSCHEM)))

all: simulate

simulate: spice_capMeter.raw spice_inductMeter.raw spice_freqMeter.raw

spice_inductMeter.ckt spice_capMeter.ckt: models/LM393.5_1 lc_osc.sch freq_buf.sch
spice_freqMeter.ckt: models/LM393.5_1 freq_buf.sch

newUnoTrial.pcb: newUnoTrial.sch

lcMeter_top.bom: $(ALLSCHEM)

lcMeter_top.bom2: $(ALLSCHEM)

lcMeter_top.drc: $(ALLSCHEM)

%.bom: %.sch attribs
	gnetlist -g bom -o $@ $<

%.bom2: %.sch attribs
	gnetlist -g bom2 -o $@ $<

%.drc: %.sch
	gnetlist -g drc2 -o $@ $<

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
%.ckt: %.sch
	gnetlist -g spice-sdb $< -o $@

# ngspice results
%.raw: %.ckt
	ngspice -b $< -r $@ 2>&1 | tee $(addsuffix .log,$(basename $(notdir $<)))
	# 
	# View results with gwave $@
	# Set X-axis to log when viewing frequencies.
	#

clean:
	$(RM) *.log *.raw
	$(RM) *.ckt
	$(RM) *.cmd
	$(RM) *.net
	$(RM) *.new.pcb
	$(RM) *.drc
	$(RM) *.bom *.bom2


distclean: clean
	$(RM) *~
	$(RM) sym/*~
	$(RM) \#*\#
	$(RM) sym/\#*\#
	$(RM) *.backup
