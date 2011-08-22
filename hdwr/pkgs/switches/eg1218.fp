# Switch, SPDT, slide
# E-Switch EG1218
#
# Datasheet: EG1218.fp
#
Element["" "C&K SW SPDT" "" "" 0  0 35000 -12850 0 100 ""]
(
    Pin[0 0 6500 30 7000 3500 "" "2" ""]
    Pin[9800 0 6500 30 7000 3500 "" "1" ""]
    Pin[19600 0 6500 30 7000 3500 "" "3" ""]

    ElementLine[-13200 7850 32700 7850 1000]
    ElementLine[-13200 7850 -13200 -7850 1000]
    ElementLine[32700 -7850 32700 7850 1000]
    ElementLine[32700 -7850 -13200 -7850 1000]
)
