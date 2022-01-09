tests
testBarPlotType

	| plotType |
	plotType := ParticleChartPlotType bar.
	
	self assert: plotType name equals: 'Bar'.
	self assert: plotType isVisitedComparing: self barPlotTypeVisitingCode
	