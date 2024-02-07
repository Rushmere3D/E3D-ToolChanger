; set neopixels based on heater temp
 
; define the LED (probably should be in config.g)
;M150 X1 Q3000000      ; set LED type to NeoPixel and set SPI frequency to 3MHz
 
 
; adjust these variables temps to suit
var lowHeat = 30
var medHeat = 80
var highHeat = 170
var pixelsPerTool = 3
 
; create other needed variables
var thisHeater= 0
var thisHeaterTemp = 0
var upperTemp = 0
var thisTool= 0
var F=0 ;
 
 
; gather the temperatures
 
while iterations < #tools ; loop through the tools
	set var.thisTool = iterations
	set var.upperTemp = 0 ; reset the upper temp
	while iterations < #tools[var.thisTool].heaters ; loop through the heaters on each tool and get max temp
		set var.thisHeater = tools[var.thisTool].heaters[iterations]
		set var.thisHeaterTemp = heat.heaters[var.thisHeater].current
		if var.thisHeaterTemp > var.upperTemp
			set var.upperTemp = var.thisHeaterTemp
			
	; determine if there will be more commands in this loop
	if iterations = #tools - 1
		set var.F = 0
	else
		set var.F = 1
		
	; Set the group of LEDs based on the temperature
	if var.upperTemp >= var.highHeat
		M150 R255 P255 S{var.pixelsPerTool} F{var.F} ; set pixels to red
		echo "Tool ", iterations , "set to red" 
	elif var.upperTemp >= var.medHeat
		M150 R255 U69 P255 S{var.pixelsPerTool} F{var.F} ; set pixels to orange
		echo "Tool ", iterations , "set to orange"
	else
		M150 R255 U255 B255 P255 S{var.pixelsPerTool} F{var.F} ; set pixels to white
		echo "Tool ", iterations , "set to white"
		
G4 S30