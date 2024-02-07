; homez.g
; called to home the Z axis

M98 P"/macros/Movement/Coupler - Unlock"	; Open Coupler

G91 							; Relative mode
G1 H2 Z5 F5000					; Lower the bed
G90								; back to absolute positioning

G1 X150 Y100 F50000				; Position the endstop above the bed centre

M558 F800
G30
M558 F200
G30