;brush in
G1 X322 Y156 F50000
G1 X336 Y151 F50000
G1 X322 Y146 F50000
G1 X336 Y141 F50000
G1 X322 Y136 F50000
G1 X336 Y131 F50000


;Park for prime/purge
G1 X332 Y95 F50000

;Purge
G92 E0
G1 F200
G1 E12 F200
G92 E0
G1 E-12 F2750
G4 S4

;Run Out
G1 X332 Y110 F50000


;Brush Out
G1 X336 Y131 F50000
G1 X322 Y136 F50000
G1 X336 Y141 F50000
G1 X322 Y146 F50000
G1 X336 Y151 F50000
G1 X322 Y156 F50000