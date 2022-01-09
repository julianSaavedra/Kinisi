tests
testLinePlotType

	| plotType |
	plotType := ParticleChartPlotType line.
	
	plotType accept: self.
	
	self assert: plotType name equals: 'Line'.
	self assert: plotTypeVisitingResult equals: self linePlotTypeVisitingCode