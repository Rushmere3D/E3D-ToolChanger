; tpost1.g
; called after tool 1 has been selected

;heatup
M116 P1

;prime nozzle
M98 P"wipe.g"

M106 R2	; restore print cooling fan speed

;G1 R2 X0 Y0 Z2 F10000
G1 R2 Z0 F1000