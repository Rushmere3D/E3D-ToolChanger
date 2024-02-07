; tpre0.g
; called before tool 0 is selected

;Unlock Coupler
M98 P"/macros/Movement/Coupler - Unlock"

;Move to location
G1 X-11.5 Y200 F50000

;Move in
G1 X-11.5 Y230 F50000

;Collect
G1 X-11.5 Y240.5 F2000

;Close Coupler
M98 P"/macros/Movement/Coupler - Lock"

;WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!
;if you are using non-standard length hotends ensure the bed is lowered enough BEFORE undocking the tool!
G91
G1 Z15 F1000
G90

;adjust brush height for V6
;G1 B40 F50000;

;Move Out
G1 X-11.5 Y150 F4000


