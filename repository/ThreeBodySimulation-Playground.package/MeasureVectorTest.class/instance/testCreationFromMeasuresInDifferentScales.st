tests
testCreationFromMeasuresInDifferentScales

	| milimeter kilometer |
	milimeter := unitProvider milimeter.
	kilometer := unitProvider kilometer.
	
	self
		assert: (MeasureVector x: (meter with: 1) y: (milimeter with: 1) z: (kilometer with: 1))
		equals: (MeasureVector x: 1 y: 1/1000 z: 1000 with: meter)