; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: printer name
; Filament: filament name
; Created: Tue Jul 28 2020 16:12:35 GMT-0500 (Central Daylight Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 220 °C
; Bed Temperature = 60 °C
; Retraction Distance = 1.3 mm
; Layer Height = 0.24 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 200 mm
; Bed Size Y = 200 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 2400 mm/m
; Fast Printing Speed = 4800 mm/m
; Movement Speed = 10800 mm/m
; Retract Speed = 2700 mm/m
; Unretract Speed = 2700 mm/m
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0.3
; Ending Value Factor = 0.6
; Factor Stepping = 0.05
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 55 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.1
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G28 ; Home all axes
T0 ; Switch to tool 0
G1 Z5 F100 ; Z raise
M104 S220 ; Set nozzle temperature (no wait)
M190 S60 ; Set bed temperature (wait)
M109 S220 ; Wait for nozzle temp
M204 P500 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0
G1 X100 Y100 F10800 ; move to start
G1 Z0.24 F2400 ; Move to layer height
;
; prime nozzle
;
G1 X51 Y72.5 F10800 ; move to start
G1 X51 Y127.5 E4.8294 F1800 ; print line
G1 X51.66 Y127.5 F10800 ; move to start
G1 X51.66 Y72.5 E4.8294 F1800 ; print line
G1 E-1.3 F2700 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X61 Y72.5 F10800 ; move to start
M900 K0.3 ; set K-factor
M117 K0.3 ; 
G1 E1.3 F2700 ; un-retract
G1 X81 Y72.5 E0.8781 F2400 ; print line
G1 X121 Y72.5 E1.7561 F4800 ; print line
G1 X141 Y72.5 E0.8781 F2400 ; print line
G1 E-1.3 F2700 ; retract
G1 X61 Y77.5 F10800 ; move to start
M900 K0.35 ; set K-factor
M117 K0.35 ; 
G1 E1.3 F2700 ; un-retract
G1 X81 Y77.5 E0.8781 F2400 ; print line
G1 X121 Y77.5 E1.7561 F4800 ; print line
G1 X141 Y77.5 E0.8781 F2400 ; print line
G1 E-1.3 F2700 ; retract
G1 X61 Y82.5 F10800 ; move to start
M900 K0.4 ; set K-factor
M117 K0.4 ; 
G1 E1.3 F2700 ; un-retract
G1 X81 Y82.5 E0.8781 F2400 ; print line
G1 X121 Y82.5 E1.7561 F4800 ; print line
G1 X141 Y82.5 E0.8781 F2400 ; print line
G1 E-1.3 F2700 ; retract
G1 X61 Y87.5 F10800 ; move to start
M900 K0.45 ; set K-factor
M117 K0.45 ; 
G1 E1.3 F2700 ; un-retract
G1 X81 Y87.5 E0.8781 F2400 ; print line
G1 X121 Y87.5 E1.7561 F4800 ; print line
G1 X141 Y87.5 E0.8781 F2400 ; print line
G1 E-1.3 F2700 ; retract
G1 X61 Y92.5 F10800 ; move to start
M900 K0.5 ; set K-factor
M117 K0.5 ; 
G1 E1.3 F2700 ; un-retract
G1 X81 Y92.5 E0.8781 F2400 ; print line
G1 X121 Y92.5 E1.7561 F4800 ; print line
G1 X141 Y92.5 E0.8781 F2400 ; print line
G1 E-1.3 F2700 ; retract
G1 X61 Y97.5 F10800 ; move to start
M900 K0.55 ; set K-factor
M117 K0.55 ; 
G1 E1.3 F2700 ; un-retract
G1 X81 Y97.5 E0.8781 F2400 ; print line
G1 X121 Y97.5 E1.7561 F4800 ; print line
G1 X141 Y97.5 E0.8781 F2400 ; print line
G1 E-1.3 F2700 ; retract
G1 X61 Y102.5 F10800 ; move to start
M900 K0.6 ; set K-factor
M117 K0.6 ; 
G1 E1.3 F2700 ; un-retract
G1 X81 Y102.5 E0.8781 F2400 ; print line
G1 X121 Y102.5 E1.7561 F4800 ; print line
G1 X141 Y102.5 E0.8781 F2400 ; print line
G1 E-1.3 F2700 ; retract
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X81 Y107.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X81 Y127.5 E0.8781 F2400 ; print line
G1 E-1.3 F2700 ; retract
G1 X121 Y107.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X121 Y127.5 E0.8781 F2400 ; print line
G1 E-1.3 F2700 ; retract
G1 Z0.34 F2400 ; zHop
;
; print K-values
;
G1 X143 Y70.5 F10800 ; move to start
G1 Z0.24 F2400 ; zHop
G1 E1.3 F2700 ; un-retract
G1 X145 Y70.5 E0.0878 F2400 ; 0
G1 X145 Y72.5 E0.0878 F2400 ; 0
G1 X145 Y74.5 E0.0878 F2400 ; 0
G1 X143 Y74.5 E0.0878 F2400 ; 0
G1 X143 Y72.5 E0.0878 F2400 ; 0
G1 X143 Y70.5 E0.0878 F2400 ; 0
G1 E-1.3 F2700 ; retract
G1 X146 Y70.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X146 Y70.9 E0.0176 F2400 ; dot
G1 E-1.3 F2700 ; retract
G1 X147 Y70.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X147 Y72.5 F10800 ; move to start
G1 X147 Y74.5 F10800 ; move to start
G1 X149 Y74.5 E0.0878 F2400 ; 3
G1 X149 Y72.5 E0.0878 F2400 ; 3
G1 X149 Y70.5 E0.0878 F2400 ; 3
G1 X147 Y70.5 E0.0878 F2400 ; 3
G1 X147 Y72.5 F10800 ; move to start
G1 X149 Y72.5 E0.0878 F2400 ; 3
G1 E-1.3 F2700 ; retract
G1 Z0.34 F2400 ; zHop
G1 X143 Y80.5 F10800 ; move to start
G1 Z0.24 F2400 ; zHop
G1 E1.3 F2700 ; un-retract
G1 X145 Y80.5 E0.0878 F2400 ; 0
G1 X145 Y82.5 E0.0878 F2400 ; 0
G1 X145 Y84.5 E0.0878 F2400 ; 0
G1 X143 Y84.5 E0.0878 F2400 ; 0
G1 X143 Y82.5 E0.0878 F2400 ; 0
G1 X143 Y80.5 E0.0878 F2400 ; 0
G1 E-1.3 F2700 ; retract
G1 X146 Y80.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X146 Y80.9 E0.0176 F2400 ; dot
G1 E-1.3 F2700 ; retract
G1 X147 Y80.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X147 Y82.5 F10800 ; move to start
G1 X147 Y84.5 F10800 ; move to start
G1 X147 Y82.5 E0.0878 F2400 ; 4
G1 X149 Y82.5 E0.0878 F2400 ; 4
G1 X149 Y84.5 F10800 ; move to start
G1 X149 Y82.5 E0.0878 F2400 ; 4
G1 X149 Y80.5 E0.0878 F2400 ; 4
G1 E-1.3 F2700 ; retract
G1 Z0.34 F2400 ; zHop
G1 X143 Y90.5 F10800 ; move to start
G1 Z0.24 F2400 ; zHop
G1 E1.3 F2700 ; un-retract
G1 X145 Y90.5 E0.0878 F2400 ; 0
G1 X145 Y92.5 E0.0878 F2400 ; 0
G1 X145 Y94.5 E0.0878 F2400 ; 0
G1 X143 Y94.5 E0.0878 F2400 ; 0
G1 X143 Y92.5 E0.0878 F2400 ; 0
G1 X143 Y90.5 E0.0878 F2400 ; 0
G1 E-1.3 F2700 ; retract
G1 X146 Y90.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X146 Y90.9 E0.0176 F2400 ; dot
G1 E-1.3 F2700 ; retract
G1 X147 Y90.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X149 Y90.5 E0.0878 F2400 ; 5
G1 X149 Y92.5 E0.0878 F2400 ; 5
G1 X147 Y92.5 E0.0878 F2400 ; 5
G1 X147 Y94.5 E0.0878 F2400 ; 5
G1 X149 Y94.5 E0.0878 F2400 ; 5
G1 E-1.3 F2700 ; retract
G1 Z0.34 F2400 ; zHop
G1 X143 Y100.5 F10800 ; move to start
G1 Z0.24 F2400 ; zHop
G1 E1.3 F2700 ; un-retract
G1 X145 Y100.5 E0.0878 F2400 ; 0
G1 X145 Y102.5 E0.0878 F2400 ; 0
G1 X145 Y104.5 E0.0878 F2400 ; 0
G1 X143 Y104.5 E0.0878 F2400 ; 0
G1 X143 Y102.5 E0.0878 F2400 ; 0
G1 X143 Y100.5 E0.0878 F2400 ; 0
G1 E-1.3 F2700 ; retract
G1 X146 Y100.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X146 Y100.9 E0.0176 F2400 ; dot
G1 E-1.3 F2700 ; retract
G1 X147 Y100.5 F10800 ; move to start
G1 E1.3 F2700 ; un-retract
G1 X147 Y102.5 F10800 ; move to start
G1 X149 Y102.5 E0.0878 F2400 ; 6
G1 X149 Y100.5 E0.0878 F2400 ; 6
G1 X147 Y100.5 E0.0878 F2400 ; 6
G1 X147 Y102.5 E0.0878 F2400 ; 6
G1 X147 Y104.5 E0.0878 F2400 ; 6
G1 X149 Y104.5 E0.0878 F2400 ; 6
G1 E-1.3 F2700 ; retract
G1 Z0.34 F2400 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X200 Y200 F10800 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;