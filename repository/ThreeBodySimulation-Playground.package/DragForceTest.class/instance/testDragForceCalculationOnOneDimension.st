as yet unclassified
testDragForceCalculationOnOneDimension

	| newton squareMeter meter cubicMeter multipliedUnit table convertionBlock measureConverter second kilogram fluidDensity objectSpeed dragCofficient area dragForce convertedDragForce |

	newton := BaseUnit named: 'Newton' sign: 'N'.
	meter := BaseUnit named: 'Meter' sign: 'm'.
	squareMeter := meter * meter.
	cubicMeter := squareMeter * meter.
	second := BaseUnit named: 'Second' sign: 's'.
	kilogram := BaseUnit named: 'Kilogram' sign: 'Kg'.
	
	multipliedUnit := (meter * kilogram) / (second * second).
	table := ConversionTable new.
	convertionBlock := [ :aValue | aValue / multipliedUnit * newton ].
	table from: multipliedUnit to: newton use: convertionBlock.
	measureConverter := MeasureConverter on: table.	
	
	fluidDensity := Measure amount: 1 unit: kilogram / cubicMeter.
	objectSpeed := Measure amount: 2 unit: meter / second.
	dragCofficient := 1.
	area := Measure amount: 10 unit: squareMeter.

	dragForce := 0.5 * fluidDensity * objectSpeed * objectSpeed * dragCofficient * area.
	convertedDragForce := measureConverter convert: dragForce to: newton.
	self assert: convertedDragForce equals: (Measure amount: 20.0 unit: newton)