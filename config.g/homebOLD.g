; homea.g
; called to home the b axis

;M574 B1 S1 		; Define active low and unused microswitches

M400 			; make sure everything has stopped before we make changes
G4 P400			; wait 400ms
;M574 B1 S3 		; set endstops to use motor stall

M913 B20 		; drop motor currents to 50%
M915 H200 B S3 R0 F0 	; set A to sensitivity 3, do nothing when stall, unfiltered


G91 			; use relative positioning
G1 H1 B-60 F5000 	; move down 50mm, stopping at the endstop
G1 H1 B0.5 F2000 		; move away from end
G92 B0;			; set B to 0 to compensate torsion of mount
G90 			; back to absolute positioning

M400 			; make sure everything has stopped before we reset the motor currents
G4 P100			; wait 400ms
M913 B100 		; motor currents back to 100%
