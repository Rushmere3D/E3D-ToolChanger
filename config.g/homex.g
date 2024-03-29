; homex.g
; called to home the x axis

G91 							; use relative positioning

;G1 H2 X0.5 Y-0.5 F10000		; energise motors to ensure they are not stalled

;M400 							; make sure everything has stopped before we change the motor currents
;M913 X40 Y40 					; drop motor currents to 25%
;M915 H200 X Y S3 R0 F0 		; set X and Y to sensitivity 3, do nothing when stall, unfiltered

G1 H2 Z3 F5000					; lift Z 3mm
G1 H1 X-400 F5000 				; move left 400mm, stopping at the endstop
G1 H2 X2 F3000 					; move away from end
G1 H2 Z-3 F1200					; lower Z
G90 							; back to absolute positioning

;M400 							; make sure everything has stopped before we reset the motor currents
;M913 X100 Y100 				; motor currents back to 100%
