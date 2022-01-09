tests
testScatterPlotType

	| plotType |
	plotType := ParticleChartPlotType scatter.
	
	plotType accept: self.
	
	self assert: plotType name equals: 'Scatter'.
	self assert: plotTypeVisitingResult equals: self scatterPlotTypeVisitingCode