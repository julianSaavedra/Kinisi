tests
testScatterPlotType

	| plotType |
	plotType := ParticleChartPlotType scatter.
	
	self assert: plotType name equals: 'Scatter'.
	self assert: plotType isVisitedComparing: self scatterPlotTypeVisitingCode