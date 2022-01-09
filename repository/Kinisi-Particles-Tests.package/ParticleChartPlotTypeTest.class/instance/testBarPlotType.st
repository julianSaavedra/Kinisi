tests
testBarPlotType

	| plotType |
	plotType := ParticleChartPlotType bar.
	
	plotType accept: self.
	
	self assert: plotType name equals: 'Bar'.
	self assert: plotTypeVisitingResult equals: self barPlotTypeVisitingCode