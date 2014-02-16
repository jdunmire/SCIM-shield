#
# *.ckt - spice netlist for modeling
# *.raw - output from ngspice, use gwave to view
# *.sch - schematic files view/edit with gschem
# *.prj - gsch2pcb project file
# *.pcb - pcb file
#
# 
#
PROJNAME=lcMeter
TOPSCHEM=$(PROJNAME)_top.sch
OTHERSCHEM=lc_ui.sch lc_osc.sch freq_buf.sch

ALLSCHEM=$(TOPSCHEM) $(OTHERSCHEM)

check: $(addsuffix .drc,$(basename $(ALLSCHEM)))

all: check simulate lcMeter_nui.zip

simulate: spice_capMeter.raw spice_inductMeter.raw spice_freqMeter.raw

spice_inductMeter.ckt spice_capMeter.ckt: models/LM393.5_1 lc_osc.sch freq_buf.sch
spice_freqMeter.ckt: models/LM393.5_1 freq_buf.sch

lcMeter_top.pcb: $(ALLSCHEM)

lcMeter_top.bom: $(ALLSCHEM)

lcMeter_top.bom2: $(ALLSCHEM)

lcMeter_top.drc: $(ALLSCHEM)

lcMeter_nui.pcb: lcMeter_nui.sch lc_osc.sch freq_buf.sch

lcMeter_nui.bom: lcMeter_nui.sch lc_osc.sch freq_buf.sch

lcMeter_nui.bom2: lcMeter_nui.sch lc_osc.sch freq_buf.sch

lcMeter_nui.drc: lcMeter_nui.sch lc_osc.sch freq_buf.sch

lcMeter_nui.zip: lcMeter_nui.GTL lcMeter_nui.GBL lcMeter_nui.GTS lcMeter_nui.GBS lcMeter_nui.GTO lcMeter_nui.GKO lcMeter_nui.XLN
	zip $@ $^

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

# gerber files
%.bottomsilk.gbr %.top.gbr %.bottom.gbr \
    %.topmask.gbr %.bottommask.gbr %.topsilk.gbr \
    %.ground.gbr %.power.gbr \
    %.outline.gbr %.plated-drill.cnc: %.pcb
	pcb -x gerber $<

# Gerber file names for fab houses
# Specifically for OSH Park (http://oshpark.com/guidelines)
%.GTL: %.top.gbr
	cp $< $@

%.GBL: %.bottom.gbr
	cp $< $@

%.GTS: %.topmask.gbr
	cp $< $@

%.GBS: %.bottommask.gbr
	cp $< $@

%.GTO: %.topsilk.gbr
	cp $< $@

%.GBO: %.bottomsilk.gbr
	cp $< $@

%.GKO: %.outline.gbr
	cp $< $@

%.G2L: %.ground.gbr
	cp $< $@

%.G3L: %.power.gbr
	cp $< $@

%.XLN: %.plated-drill.cnc
	cp $< $@

clean:
	$(RM) *.log *.raw
	$(RM) *.ckt
	$(RM) *.cmd
	$(RM) *.net
	$(RM) *.new.pcb
	$(RM) *.drc
	$(RM) *.bom *.bom2
	$(RM) *.gbr *.cnc
	$(RM) *.G* *.XLN *.png


distclean: clean
	$(RM) *~
	$(RM) sym/*~
	$(RM) \#*\#
	$(RM) sym/\#*\#
	$(RM) *.backup
