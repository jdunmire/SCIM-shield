output.net: lc_osc.sch spicecmds models/LM339.5_1 models/LM393.5_1
	gnetlist -g spice-sdb lc_osc.sch

simulate: output.net
	ngspice -b output.net -r result.raw -o messages.log
	# view with gwave

clean:
	$(RM) *.log *.raw *.sch~
	$(RM) output.net
